class Public::EndUsersController < ApplicationController
  def show
    @end_user = current_end_user
    @favorites = @end_user.favorites.order(created_at: :desc).limit(5)
    @want_items = @end_user.want_items.order(created_at: :desc).limit(5)
    @reviews = @end_user.reviews.order(created_at: :desc).limit(5)
  end

  def edit
  end

  def confirm
  end
end
