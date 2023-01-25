class Public::HomesController < ApplicationController
  before_action :set_search

  def top
    @responses = Response.group(:present_genre).order('count(id) desc').first(10)
    @items = RakutenWebService::Ichiba::Item.search(keyword: 'プレゼント', sort: '-reviewCount').first(5)
    @reviews = Review.group(:code).order("avg(evaluation) desc").first(5)
  end



  private

  def set_search
    @q = Review.ransack(params[:q])
    @search_reviews = @q.result(distinct: true)
    @ranking_searchs = @q.result(distinct: true).group(:code).order("avg(evaluation) desc")
  end
end
