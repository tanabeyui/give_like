class Public::ResponsesController < ApplicationController

  def index
    @responses = Response.select(:present_genre).distinct
  end

  def new
    @response = Response.new
    @root = RakutenWebService::Ichiba::Genre.root
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to responses_confirm_path
    else
      render :new
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to items_path
  end



  private

  def set_search
    @q = Response.ransack(params[:q])
    @search_responses = @q.result(distinct: true).select(:present_genre).distinct
  end

  def response_params
    params.require(:response).permit(:giver, :gifted_event, :present_genre, :age, :gender, :internet_protocol_address )
  end
end
