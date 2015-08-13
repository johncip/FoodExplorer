class Api::RestaurantsController < ApplicationController
  include ResourceController

  def self.model
    Restaurant
  end
end
