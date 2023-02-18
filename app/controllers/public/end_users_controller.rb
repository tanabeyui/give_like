class Public::EndUsersController < ApplicationController

  def show
    @end_user = EndUser.find_by(screen_name: params[:screen_name])
    if @end_user.is_deleted == "unsubscribe"
      redirect_to not_found_path
    end
    @favorites = @end_user.favorites.order(created_at: :desc).limit(5)
    @want_items = @end_user.want_items.order(created_at: :desc).limit(5)
    @rank_colors = ['gold', 'silver', 'bronze']
    @review_categorys = @end_user.reviews.disclosed.display.group(:category).order('count(id) desc')
    @review_counts = @end_user.reviews.disclosed.display
    @latest_reviews = @end_user.reviews.disclosed.display.order(created_at: "DESC").limit(1)
    @high_reviews = @end_user.reviews.disclosed.display.order(evaluation: "DESC").limit(3)
  end

  def edit
    @end_user = current_end_user
  end

  def update
    @end_user = current_end_user
    if @end_user.update(end_user_params)
      redirect_to end_user_path(@end_user.screen_name)
    else
      render :edit
    end
  end

  def confirm
    @end_user = current_end_user
  end

  def unsubscribe
    @end_user = current_end_user
    @end_user.update(is_deleted: true)
    reset_session
    # flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end



  private

  def end_user_params
    params.require(:end_user).permit(:profile_image, :name, :email, :gender, :birth_day, :favorites_introduction, :want_items_introduction, :is_deleted)
  end
end
