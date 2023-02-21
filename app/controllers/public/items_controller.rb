class Public::ItemsController < ApplicationController
  before_action :set_search

  def index
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
    # @rankingSearchItems = RakutenWebService::Ichiba::Item.search(keyword: 'プレゼント', sort: '-reviewCount')
    # @items = []
    # @items.concat(@rankingSearchItems.page(1).to_a)
    # @items.concat(@rankingSearchItems.page(2).to_a)
    # @items.pop(10)
  end

  def show
    @item_params = params[:q] || params[:review] || params
    current_genre_id = params[:genre] || params[:q][:genre]
    @current_genre = RakutenWebService::Ichiba::Genre[current_genre_id]
    @current_genre.parents.first(1).each do |parent|
      @category = parent.name
    end
    @favorite = Favorite.new
    @want_item = WantItem.new
    @reviews = Review.where(code: @item_params[:code]).disclosed.page(params[:page]).per(20)
    if params[:sort] == "new"
      @sort_reviews = @reviews.order(created_at: "DESC").page(params[:page]).per(20)
    elsif params[:sort] == "old"
      @sort_reviews = @reviews.order(created_at: "ASC").page(params[:page]).per(20)
    elsif params[:sort] == "high_rated"
      @sort_reviews = @reviews.order(evaluation: "DESC").page(params[:page]).per(20)
    elsif params[:sort] == "low_rated"
      @sort_reviews = @reviews.order(evaluation: "ASC").page(params[:page]).per(20)
    end
  end

  def search
    @keyword = params[:keyword]
    @SearchItems = RakutenWebService::Ichiba::Item.search(keyword: @keyword)
    items_all = []
    items_all.concat(@SearchItems.page(1).to_a)
    items_all.concat(@SearchItems.page(2).to_a)
    items_all.concat(@SearchItems.page(3).to_a)
    @items_page = Kaminari.paginate_array(items_all).page(params[:page])
    @items = RakutenWebService::Ichiba::Item.search(keyword: @keyword).page(params[:page])
  end



  private

  def set_search
    @q = Review.ransack(params[:q])
    @search_reviews = @q.result(distinct: true).disclosed.order(created_at: "DESC").page(params[:page]).per(20)
  end

end
