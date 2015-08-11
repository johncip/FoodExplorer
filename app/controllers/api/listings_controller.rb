class Api::ListingsController < ApplicationController
  before_action :redirect_unless_logged_in

  def self.model
    Listing
  end
end
