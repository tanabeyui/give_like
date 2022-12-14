class Public::ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.end_user_id = current_end_user.id
    if @review.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit
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

  def review_params
    params.require(:review).permit(:name, :image, :code, :price, :url, :category,
    :body, :evaluation, :getting_method, :giver, :gifted_event, :is_anonymous, :is_displayed, :is_checked, :is_disclose,)
  end

end
