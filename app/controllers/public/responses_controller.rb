class Public::ResponsesController < ApplicationController
  before_action :set_search

  def index
    @responses = Response.group(:present_genre).order('count(id) desc').first(10)
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
    if params[:q].present?
			@q = Response.ransack(params[:q])
      @responses_count = @q.result(distinct: true)
      @search_responses = @q.result(distinct: true).group(:present_genre).order('count(id) desc')
    elsif params[:commit]
      @q = Response.ransack
      @responses_count = @q.result(distinct: true)
      @search_responses = @q.result(distinct: true).group(:present_genre).order('count(id) desc')
		else
			params[:q] = {"gender_eq_any"=>["1"]}
			@q = Response.ransack(params[:q])
      @responses_count = @q.result(distinct: true)
      @search_responses = @q.result(distinct: true).group(:present_genre).order('count(id) desc')
		end
  end

  def response_params
    params.require(:response).permit(:giver, :gifted_event, :present_genre, :age, :gender, :internet_protocol_address )
  end
end
