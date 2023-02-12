class Public::FavoritesController < ApplicationController
  before_action :set_search

  def index
    @end_user = EndUser.find_by(screen_name: params[:screen_name])
    @favorite_categorys = Favorite.where(end_user_id: @end_user.id).group(:category).order('count(id) desc')
    @favorites = @end_user.favorites.order(created_at: :desc).page(params[:page]).per(10)
  end

  def create
    if end_user_signed_in?
      @favorite = Favorite.new(favorite_params)
      @favorite.end_user_id = current_end_user.id
      favorited_item = current_end_user.favorites.find_by(code: @favorite.code)
      if favorited_item != nil
        favorited_item.destroy
        @favorite.save
        redirect_to end_user_favorites_path(screen_name: current_end_user.screen_name)
      else
        @favorite.save
        redirect_to end_user_favorites_path(screen_name: current_end_user.screen_name)
      end
    else
      flash[:danger] = "ログインしてください！"
      redirect_to item_path(params[:favorite][:code], name: params[:favorite][:name], code: params[:favorite][:code],
            genre: params[:favorite][:genre], price: params[:favorite][:price], image: params[:favorite][:image], url: params[:favorite][:url])
    end
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    redirect_to end_user_favorites_path(favorite.end_user.screen_name)
  end



  private

  def set_search
    @q = Favorite.ransack(params[:q])
    @search_items = @q.result(distinct: true).order(created_at: :desc).page(params[:page])
  end

  def favorite_params
    params.require(:favorite).permit(:end_user_id, :name, :image, :code, :price, :url, :category)
  end

end
