class Public::HomesController < ApplicationController
  def top
    @responses = Response.group(:present_genre).order('count(id) desc').first(10)
    @items = RakutenWebService::Ichiba::Item.search(keyword: 'プレゼント', sort: '-reviewCount').first(5)
    @reviews = Review.group(:code).order("avg(evaluation) desc").first(5)
  end
end
