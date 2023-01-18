class Public::ReviewsController < ApplicationController
  before_action :set_search

  def index
    @end_user = EndUser.find_by(screen_name: params[:screen_name])
    @reviews = @end_user.reviews.all
    @categorys = Review.all.map(&:category).uniq
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

  def search
    @q = Review.ransack(params[:q])
    if params[:q][:end_user_birth_day_to_age_gteq] != "" && params[:q][:end_user_birth_day_to_age_lteq] != "" &&
                              (params[:q][:end_user_birth_day_to_age_gteq] > params[:q][:end_user_birth_day_to_age_lteq])
      redirect_to items_path
    else
      @reviews = @q.result(distinct: true)
    end
  end



  private

  def set_search
    @q = Review.ransack(params[:q])
    @search_reviews = @q.result(distinct: true)
  end

  def review_params
    params.require(:review).permit(:name, :image, :code, :price, :url, :category,
    :body, :evaluation, :getting_method, :giver, :gifted_event, :is_anonymous, :is_displayed, :is_checked, :is_disclose,)
  end

end
