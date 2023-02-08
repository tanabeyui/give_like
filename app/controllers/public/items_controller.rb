class Public::ItemsController < ApplicationController
  before_action :set_search

  def index
    # @rankingSearchItems = RakutenWebService::Ichiba::Item.search(keyword: 'プレゼント', sort: '-reviewCount')
    # @items = []
    # @items.concat(@rankingSearchItems.page(1).to_a)
    # @items.concat(@rankingSearchItems.page(2).to_a)
    # @items.pop(10)
    @rank_colors = ['gold', 'silver', 'bronze']
    if params[:genre]
      @title = params[:title]
      @genre_id = params[:genre]
      @items = RakutenWebService::Ichiba::Genre[@genre_id].ranking
    elsif params[:sex]
      @title = params[:title]
      @sex = params[:sex]
      @items = RakutenWebService::Ichiba::Item.ranking(:sex => @sex)
    elsif params[:age]
      @title = params[:title]
      @age = params[:age]
      @items = RakutenWebService::Ichiba::Item.ranking(:age => @age)
    else
      @title = "プレゼント"
      @items = RakutenWebService::Ichiba::Item.search(keyword: 'プレゼント', sort: '-reviewCount')
    end
  end

  def show
    current_genre = params[:genre] || params[:q][:genre]
    @root = RakutenWebService::Ichiba::Genre[current_genre]
    @root.parents.first(1).each do |parent|
      @category = parent.name
    end
    @reviews = Review.where(code: params[:code]).all
    if params[:keyword] == "new"
      @sort_reviews = @reviews.order(created_at: "DESC")
    elsif params[:keyword] == "old"
      @sort_reviews = @reviews.order(created_at: "ASC")
    elsif params[:keyword] == "high_rated"
      @sort_reviews = @reviews.order(evaluation: "DESC")
    elsif params[:keyword] == "low_rated"
      @sort_reviews = @reviews.order(evaluation: "ASC")
    end
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
