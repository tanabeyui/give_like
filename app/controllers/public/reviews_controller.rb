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
      # @review_categorys = @end_user.reviews.disclosed.group(:category).order('count(id) desc')
      # @review_counts = @end_user.reviews.disclosed
      @reviews = @end_user.reviews.disclosed.order(evaluation: "DESC").page(params[:page]).per(10)
      @review_categorys = Review.where(end_user_id: @end_user.id, is_disclose: true).group(:category).order('count(id) desc')
      @review_counts = Review.where(end_user_id: @end_user.id, is_disclose: true)
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
  end

  def add_post
    @review = Review.new(review_params)
    @end_user = current_end_user
    if params[:review][:getting_method] == "self_purchase"
      render :confirm
    end
  end

  def confirm
    @review = Review.new(review_params)
    @end_user = current_end_user
  end

  def create
    @review = Review.new(review_params)
    @review.end_user_id = current_end_user.id
    if @review.save
      redirect_to item_path(params[:review][:code], name: params[:review][:name], code: params[:review][:code], genre: params[:review][:genre], price: params[:review][:price], image: params[:review][:image], url: params[:review][:url])
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
    redirect_to items_path
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
