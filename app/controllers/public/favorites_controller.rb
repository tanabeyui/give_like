class Public::FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.end_user_id = current_end_user.id
    @favorite.save
    redirect_to items_path
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
