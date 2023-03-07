class Public::HomesController < ApplicationController
  before_action :set_search

  def top
    @all_responses = Response.group(:age)
    @rank_colors = ['gold', 'silver', 'bronze', 'dark', 'dark']
    @responses = Response.group(:present_genre).order('count(id) desc').first(7)
    @male_responses = Response.where(gender: "0").group(:present_genre).order('count(id) desc').first(3)
    @female_responses = Response.where(gender: "1").group(:present_genre).order('count(id) desc').first(3)
    @items = RakutenWebService::Ichiba::Item.search(keyword: 'プレゼント', sort: '-reviewCount').first(5)
    @reviews = Review.disclosed.group(:code).order("avg(evaluation) desc").first(5)
  end

  def not_found

  end



  private

  def set_search
    @q = Review.ransack(params[:q])
    # @search_reviews = @q.result(distinct: true)
    # @ranking_searchs = @q.result(distinct: true).group(:code).order("avg(evaluation) desc")
  end
end
