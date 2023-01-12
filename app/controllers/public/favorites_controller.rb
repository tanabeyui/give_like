class Public::FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.end_user_id = current_end_user.id
    @favorite.save
    redirect_to item_path(params[:favorite][:code], name: params[:favorite][:name], code: params[:favorite][:code], genre: params[:favorite][:genre], price: params[:favorite][:price], image: params[:favorite][:image], url: params[:favorite][:url])
  end

  def destroy
    favorite = current_end_user.favorites.find(params[:id])
    favorite.destroy
    redirect_to items_path
  end



  private

  def favorite_params
    params.require(:favorite).permit(:end_user_id, :name, :image, :code, :price, :url, :category)
  end

end
