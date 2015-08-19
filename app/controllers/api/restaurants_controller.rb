# Controller actions for restaurants. Just a regular resource.
class Api::RestaurantsController < ApplicationController
  include Resourceful

  def self.model
    Restaurant
  end
end
