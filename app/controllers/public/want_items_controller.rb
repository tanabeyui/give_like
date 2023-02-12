class Public::WantItemsController < ApplicationController
  before_action :set_search

  def index
    @end_user = EndUser.find_by(screen_name: params[:screen_name])
    @want_item_categorys = WantItem.where(end_user_id: @end_user.id).group(:category).order('count(id) desc')
    @want_items = @end_user.want_items.order(created_at: :desc).page(params[:page]).per(10)
  end

  def create
    @want_item = WantItem.new(want_item_params)
    @want_item.end_user_id = current_end_user.id
    wanted_item = current_end_user.want_items.find_by(code: @want_item.code)
    if wanted_item != nil
      wanted_item.destroy
      @want_item.save
      redirect_to end_user_want_items_path(screen_name: current_end_user.screen_name)
    else
      @want_item.save
      redirect_to end_user_want_items_path(screen_name: current_end_user.screen_name)
    end
  end

  def destroy
    want_item = WantItem.find(params[:id])
    want_item.destroy
    redirect_to end_user_want_items_path(want_item.end_user.screen_name)
  end



  private

  def set_search
    @q = WantItem.ransack(params[:q])
    @search_items = @q.result(distinct: true).order(created_at: :desc).page(params[:page])
  end

  def want_item_params
    params.require(:want_item).permit(:end_user_id, :name, :image, :code, :price, :url, :category)
  end

end
