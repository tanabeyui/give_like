class Public::ResponsesController < ApplicationController
  def index
  end

  def new
    @response = Response.new
    @root = RakutenWebService::Ichiba::Genre.root # root genre


  end

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to items_path
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
    @q = Review.ransack(params[:q])
    @search_reviews = @q.result(distinct: true)
    @ranking_searchs = @q.result(distinct: true).group(:code).order("avg(evaluation) desc")
  end

  def response_params
    params.require(:response).permit(:giver, :gifted_event, :present_genre, :age, :gender, :internet_protocol_address )
  end
end
