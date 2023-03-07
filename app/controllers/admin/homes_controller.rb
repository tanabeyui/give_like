class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  
  def top
    @reviews = Review.unconfirmed.order(created_at: "DESC")
  end
end
