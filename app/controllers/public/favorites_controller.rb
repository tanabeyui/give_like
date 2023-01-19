class Public::FavoritesController < ApplicationController
  before_action :set_search

  def index
    @end_user = EndUser.find_by(screen_name: params[:screen_name])
    @favorites = @end_user.favorites.all
    @categorys = @end_user.favorites.map(&:category).uniq
    @chartlabels = @end_user.favorites.map(&:category).uniq.to_json.html_safe
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.end_user_id = current_end_user.id
    @favorite.save
    redirect_to item_path(params[:favorite][:code], name: params[:favorite][:name], code: params[:favorite][:code], genre: params[:favorite][:genre], price: params[:favorite][:price], image: params[:favorite][:image], url: params[:favorite][:url])
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    redirect_to end_user_favorites_path(favorite.end_user.screen_name)
  end



  private

  def set_search
    @q = Favorite.ransack(params[:q])
    @search_items = @q.result(distinct: true)
  end

  def favorite_params
    params.require(:favorite).permit(:end_user_id, :name, :image, :code, :price, :url, :category)
  end

end
