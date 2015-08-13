class Api::ListsController < ApplicationController
  include ResourceController

  def self.model
    List
  end
end
