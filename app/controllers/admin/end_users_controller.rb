class Admin::EndUsersController < ApplicationController
  before_action :set_search

  def index
    @end_users = EndUser.all.order(created_at: "DESC")
    if params[:internet_protocol_address]
      @ip_address = params[:internet_protocol_address]
      @same_end_users = EndUser.where(internet_protocol_address: @ip_address)
    end
  end

  def show
    @end_user = EndUser.find(params[:id])
  end
  
  def membership
    @end_user = EndUser.find(params[:id])
    @end_user.update(is_deleted: false)
    redirect_to admin_end_user_path(@end_user)
  end
  
  def unsubscribe
    @end_user = EndUser.find(params[:id])
    @end_user.update(is_deleted: true)
    redirect_to admin_end_user_path(@end_user)
  end



  private

  def set_search
    if params[:id]
       @q = Review.ransack(params[:q])
      @search_reviews = @q.result(distinct: true).order(created_at: "DESC")
    else
      @q = EndUser.ransack(params[:q])
      @search_end_users = @q.result(distinct: true).order(created_at: "DESC")
    end
  end

end
