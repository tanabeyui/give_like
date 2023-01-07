class Public::ItemsController < ApplicationController
  def index
    @end_users = EndUser.all
    @rankingSearchItems = RakutenWebService::Ichiba::Item.search(keyword: 'プレゼント', sort: '-reviewCount')
    @items = []
    @items.concat(@rankingSearchItems.page(1).to_a)
    @items.concat(@rankingSearchItems.page(2).to_a)
    @items.concat(@rankingSearchItems.page(3).to_a)
    @items.concat(@rankingSearchItems.page(4).to_a)
    @items.pop(20)
  end

  def show
    @favorite = Favorite.new
    genre = params[:genre]
    @root = RakutenWebService::Ichiba::Genre[genre]
    @root.parents.each do |parent|
      @category = parent.name
    end
  end

  def search
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
  end

end
