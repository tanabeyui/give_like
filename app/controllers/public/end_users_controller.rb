class Public::EndUsersController < ApplicationController
  def show
    @end_user = EndUser.find_by(screen_name: params[:screen_name])
    @favorites = @end_user.favorites.order(created_at: :desc).limit(5)
    @want_items = @end_user.want_items.order(created_at: :desc).limit(5)
    @reviews = @end_user.reviews.order(created_at: :desc).limit(5)

    @categorys = @end_user.reviews.map(&:category).uniq
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
  end


  private

  def end_user_params
    params.require(:end_user).permit(:screen_name, :name, :email, :gender, :birth_day, :favorites_introduction, :want_items_introduction)
  end
end
