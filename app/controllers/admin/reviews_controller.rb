class Admin::ReviewsController < ApplicationController
  before_action :set_search
  before_action :authenticate_admin!

  def index
    @reviews = Review.order(created_at: "DESC").page(params[:page]).per(20)
  end

  def confirmed
    @review = Review.find(params[:id])
    @review.update(is_checked: true)
    redirect_back(fallback_location: root_path)
  end

  def confirmed_all
    @reviews = Review.unconfirmed
    @reviews.each do |review|
      review.update(is_checked: true)
    end
    redirect_back(fallback_location: root_path)
  end

  def disclosed
    @review = Review.find(params[:id])
    @review.update(is_checked: true, is_disclose: true)
    redirect_back(fallback_location: root_path)
  end

  def closed
    @review = Review.find(params[:id])
    @review.update(is_checked: true, is_disclose: false)
    redirect_back(fallback_location: root_path)
  end



  private

  def set_search
    @q = Review.ransack(params[:q])
    @search_reviews = @q.result(distinct: true).order(created_at: "DESC").page(params[:page]).per(20)
  end

end
