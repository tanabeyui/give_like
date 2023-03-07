class Admin::EndUsersController < ApplicationController
  before_action :set_search
  before_action :authenticate_admin!

  def index
    @end_users = EndUser.order(created_at: "DESC").page(params[:page]).per(20)
  end

  def show
    @end_user = EndUser.find(params[:id])
    @reviews = @end_user.reviews.order(created_at: "DESC").page(params[:page]).per(20)
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
    end_user_id = params[:id]
    if  end_user_id != nil 
      @q = Review.ransack(params[:q])
      @search_reviews = @q.result(distinct: true).order(created_at: "DESC").page(params[:page]).per(20)
    else
      @q = EndUser.ransack(params[:q])
      @search_end_users = @q.result(distinct: true).order(created_at: "DESC").page(params[:page]).per(20)
    end
  end

end
