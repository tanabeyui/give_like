class Public::WantItemsController < ApplicationController

  def create
    @want_item = WantItem.new(want_item_params)
    @want_item.end_user_id = current_end_user.id
    @want_item.save
    redirect_to items_path
  end

  def destroy
    post_image = PostImage.find(params[:post_image_id])
    favorite = current_user.favorites.find_by(post_image_id: post_image.id)
    favorite.destroy
    redirect_to post_image_path(post_image)
  end



  private

  def want_item_params
    params.require(:want_item).permit(:end_user_id, :name, :image, :code, :price, :url, :category)
  end

end
