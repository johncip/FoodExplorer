# Controller for Listings (join model: List <-> Restaurant)
class Api::ListingsController < ApplicationController
  include Resourceful

  def self.model
    Listing
  end
end
