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
  end



  private

  def set_search
    @q = EndUser.ransack(params[:q])
    @search_end_users = @q.result(distinct: true).order(created_at: "DESC")
  end
end
