# Controller actions for lists. Just a regular resource.
class Api::ListsController < ApplicationController
  include Resourceful

  def self.model
    List
  end
end
