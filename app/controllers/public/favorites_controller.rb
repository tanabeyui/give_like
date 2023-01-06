class Public::FavoritesController < ApplicationController
  
  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.save
    redirect_to items_path
  end

  def destroy
    post_image = PostImage.find(params[:post_image_id])
    favorite = current_user.favorites.find_by(post_image_id: post_image.id)
    favorite.destroy
    redirect_to post_image_path(post_image)
  end
  
  
  
  private

  def favorite_params
    params.require(:favorite).permit(:end_user_id, :name, :image, :code, :price)
  end
  
end
