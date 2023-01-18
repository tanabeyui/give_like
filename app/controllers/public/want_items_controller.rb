class Public::WantItemsController < ApplicationController
  before_action :set_search

  def index
    @end_user = EndUser.find_by(screen_name: params[:screen_name])
    @want_items = @end_user.want_items.all
    @categorys = WantItem.all.map(&:category).uniq
  end
  def create
    @want_item = WantItem.new(want_item_params)
    @want_item.end_user_id = current_end_user.id
    @want_item.save
    redirect_to item_path(params[:want_item][:code], name: params[:want_item][:name], code: params[:want_item][:code], genre: params[:want_item][:genre], price: params[:want_item][:price], image: params[:want_item][:image], url: params[:want_item][:url])
  end

  def destroy
    want_item = WantItem.find(params[:id])
    want_item.destroy
    redirect_to items_path
  end



  private

  def set_search
    @q = WantItem.ransack(params[:q])
    @search_items = @q.result(distinct: true)
  end

  def want_item_params
    params.require(:want_item).permit(:end_user_id, :name, :image, :code, :price, :url, :category)
  end

end
