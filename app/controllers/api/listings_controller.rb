# Controller for Listings (join model: List <-> Restaurant)
class Api::ListingsController < ApplicationController
  include Resourceful

  def self.model
    Listing
  end

  # TODO: move to resourceful & refactor
  def create
    @listing.contributor = current_user

    if @listing.update(listing_params)
      render json: @listing
    else
      render json: @listing.errors.full_messages, status: :unprocessable_entity
    end
  end

  # TODO: move to resourceful & refactor
  def update
    if @listing.update(listing_params)
      render json: @listing
    else
      render json: @listing.errors.full_messages, status: :unprocessable_entity
    end
  end

  def assign_collection
    @listings = Listing.all.includes(:contributor, :restaurant)
  end

  private

  def listing_params
    params.require(:listing).permit(:ord, :restaurant_id, :list_id)
  end
end
