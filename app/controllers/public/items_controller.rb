class Public::ItemsController < ApplicationController
  before_action :set_search

  def index
    @rankingSearchItems = RakutenWebService::Ichiba::Item.search(keyword: 'プレゼント', sort: '-reviewCount')
    @items = []
    @items.concat(@rankingSearchItems.page(1).to_a)
    @items.concat(@rankingSearchItems.page(2).to_a)
    @items.concat(@rankingSearchItems.page(3).to_a)
    @items.concat(@rankingSearchItems.page(4).to_a)
    @items.pop(20)
  end

  def show
    current_genre = params[:genre] || params[:q][:genre]
    @root = RakutenWebService::Ichiba::Genre[current_genre]
    @root.parents.first(1).each do |parent|
      @category = parent.name
    end
    @reviews = Review.where(code: params[:code]).all
    @favorite = Favorite.new
    @want_item = WantItem.new
    @item_params = params[:q] || params
  end

  def search
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
  end



  private

  def set_search
    @q = Review.ransack(params[:q])
    @search_reviews = @q.result(distinct: true)
  end

end
