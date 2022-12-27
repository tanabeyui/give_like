class Public::ItemsController < ApplicationController
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
  end

  def search
  end
end
