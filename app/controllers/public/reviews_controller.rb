class Public::ReviewsController < ApplicationController
  before_action :set_search

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
    # if params[:review][:getting_method] == "gift"
    #   render :add_post
    # end
  end
  
  def add_post
    @review = Review.new(review_params)
    @end_user = current_end_user
  end

  def create
    @review = Review.new(review_params)
    @review.end_user_id = current_end_user.id
    if @review.save
      redirect_to end_user_reviews_path(current_end_user.screen_name)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
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
    params.require(:review).permit(:name, :image, :code, :price, :url, :category,
    :body, :evaluation, :getting_method, :giver, :gifted_event, :is_anonymous, :is_displayed, :is_checked, :is_disclose,)
  end

end
