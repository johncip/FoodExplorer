# Controller actions for lists. Just a regular resource.
class Api::ListsController < ApplicationController
  include Resourceful

  def self.model
    List
  end

  def update
    if @list.update(listing_params)
      render json: @list
    else
      render json: @list.errors.full_messages, status: :unprocessable_entity
    end
  end

  def listing_params
    params.require(:list).permit(:ord)
  end
end
