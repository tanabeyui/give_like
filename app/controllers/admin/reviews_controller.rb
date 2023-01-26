class Admin::ReviewsController < ApplicationController

  def index
    @reviews = Review.all.order(created_at: "DESC")
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
end
