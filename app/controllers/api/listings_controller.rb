class Api::ListingsController < ApplicationController
  include ResourceController
  
  def self.model
    Listing
  end
end
