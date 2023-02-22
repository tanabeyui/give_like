class Public::ReviewsController < ApplicationController
  before_action :set_search
  before_action :is_matching_login_user, only: [:edit, :update]

  def ranking
    @reviews = Review.group(:code).order("avg(evaluation) desc")
  end

  def index
    @end_user = EndUser.find_by(screen_name: params[:screen_name])
    @rank_colors = ['gold', 'silver', 'bronze']
    @start = ((params[:page] || 1 ).to_i - 1) * 10
    if @end_user.is_deleted == "unsubscribe"
      redirect_to not_found_path
    end
    if end_user_signed_in? && current_end_user.screen_name == params[:screen_name]
      @review_categorys = @end_user.reviews.disclosed.group(:category).order('count(id) desc')
      @review_counts = @end_user.reviews.disclosed
      @reviews = @end_user.reviews.disclosed.order(evaluation: "DESC").page(params[:page]).per(10)
      if params[:sort] == "new"
        @sort_reviews = @end_user.reviews.disclosed.order(created_at: "DESC").page(params[:page]).per(10)
      elsif params[:sort] == "old"
        @sort_reviews = @end_user.reviews.disclosed.order(created_at: "ASC").page(params[:page]).per(10)
      elsif params[:sort] == "high_rated"
        @reviews = @end_user.reviews.disclosed.order(evaluation: "DESC").page(params[:page]).per(10)
      elsif params[:sort] == "low_rated"
        @sort_reviews = @end_user.reviews.disclosed.order(evaluation: "ASC").page(params[:page]).per(10)
      end
    else
      @review_categorys = @end_user.reviews.disclosed.display.group(:category).order('count(id) desc')
      @review_counts = @end_user.reviews.disclosed.display
      @reviews = @end_user.reviews.disclosed.display.order(evaluation: "DESC").page(params[:page]).per(10)
      if params[:sort] == "new"
        @sort_reviews = @end_user.reviews.disclosed.display.order(created_at: "DESC").page(params[:page]).per(10)
      elsif params[:sort] == "old"
        @sort_reviews = @end_user.reviews.disclosed.display.order(created_at: "ASC").page(params[:page]).per(10)
      elsif params[:sort] == "high_rated"
        @reviews = @end_user.reviews.disclosed.display.order(evaluation: "DESC").page(params[:page]).per(10)
      elsif params[:sort] == "low_rated"
        @sort_reviews = @end_user.reviews.disclosed.display.order(evaluation: "ASC").page(params[:page]).per(10)
      end
    end
  end

  def new
    @item_params = params
    @review = Review.new
    @current_genre = RakutenWebService::Ichiba::Genre[(params[:genre])]
    unless end_user_signed_in?
      flash[:danger] = "ログインしてください！"
      redirect_to item_path(params[:code], name: params[:name], code: params[:code],
                                genre: params[:genre], price: params[:price], image: params[:image], url: params[:url])
    end
  end

  def confirm
    @review = Review.new(review_params)
    @end_user = current_end_user
    @current_genre = RakutenWebService::Ichiba::Genre[(params[:review][:genre])]
  end

  def create
    @review = Review.new(review_params)
    @review.end_user_id = current_end_user.id
    if @review.save
      redirect_to end_user_reviews_path(current_end_user.screen_name)
    else
      flash[:danger] = "未入力の項目があるため、投稿できませんでした"
      @item_params = params[:review]
      @current_genre = RakutenWebService::Ichiba::Genre[(params[:review][:genre])]
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    @current_genre = RakutenWebService::Ichiba::Genre[@review.genre]
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      if @review.getting_method == "self_purchase"
        @review.update(is_anonymous: false, is_displayed: true, giver: 0, gifted_event: 0 )
      end
      flash[:success] = "レビュー内容を変更しました"
      redirect_to end_user_reviews_path(current_end_user.screen_name)
    else
      flash[:danger] = "未入力の項目があるため、投稿できませんでした"
      @current_genre = RakutenWebService::Ichiba::Genre[@review.genre]
      render :edit
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    flash[:success] = "レビューを削除しました"
    redirect_to end_user_reviews_path(current_end_user.screen_name)
  end



  private

  def set_search
    @q = Review.ransack(params[:q])
    if end_user_signed_in? && current_end_user.screen_name == params[:screen_name]
      @search_reviews = @q.result(distinct: true).disclosed.order(created_at: "DESC").page(params[:page]).per(10)
    else
      @search_reviews = @q.result(distinct: true).disclosed.display.order(created_at: "DESC").page(params[:page]).per(10)
    end
    # @ranking_searchs = @q.result(distinct: true).group(:code).order("avg(evaluation) desc")
  end

  def review_params
    params.require(:review).permit(:name, :image, :code, :price, :url, :category, :genre,
            :body, :evaluation, :getting_method, :giver, :gifted_event, :is_anonymous, :is_displayed, :is_checked, :is_disclose,)
  end

  def is_matching_login_user
    @review = Review.find(params[:id])
    if end_user_signed_in?
      if @review.end_user_id != current_end_user.id
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end

end
