class RatingsController < ApplicationController

  def create
    @rating = Rating.new(params)
    @rating.save
    render json: @rating
  end

end
