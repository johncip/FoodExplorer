class Api::RestaurantsController < ApplicationController
  before_action :redirect_unless_logged_in
  
  def self.model
    Restaurant
  end
end
