class Public::HomesController < ApplicationController
  before_action :set_search

  def top
    @responses = Response.group(:present_genre).order('count(id) desc').first(7)
    @male_responses = Response.where(gender: "0").group(:present_genre).order('count(id) desc').first(3)
    @female_responses = Response.where(gender: "1").group(:present_genre).order('count(id) desc').first(3)

    @teens_responses = Response.where(age: "1").group(:present_genre).order('count(id) desc').first(1)
    @twenties_responses = Response.where(age: "2").group(:present_genre).order('count(id) desc').first(1)
    @thirties_responses = Response.where(age: "3").group(:present_genre).order('count(id) desc').first(1)
    @forties_responses = Response.where(age: "4").group(:present_genre).order('count(id) desc').first(1)
    @fifties_responses = Response.where(age: "5").group(:present_genre).order('count(id) desc').first(1)
    @sixties_responses = Response.where(age: "6").group(:present_genre).order('count(id) desc').first(1)
    @seventies_responses = Response.where(age: "7").group(:present_genre).order('count(id) desc').first(1)

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
