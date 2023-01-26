class Admin::ResponsesController < ApplicationController
  def index
    @chart_responses = Response.group(:present_genre).order('count(id) desc')
    @responses = Response.all
    if params[:internet_protocol_address]
      @ip_address = params[:internet_protocol_address]
      @same_end_user_responses = Response.where(internet_protocol_address: @ip_address)
    end
  end
  
  def destroy
    @response = Response.find(params[:id])
    @response.destroy
    redirect_to admin_responses_path
  end
end
