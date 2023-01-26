class Admin::HomesController < ApplicationController
  def top
    @reviews = Review.unconfirmed.order(created_at: "DESC")
  end
end
