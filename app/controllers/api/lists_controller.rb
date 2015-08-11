class Api::ListsController < ApplicationController
  before_action :redirect_unless_logged_in
  
  def self.model
    List
  end
end
