# Controller actions for lists. Just a regular resource.
class Api::ListsController < ApplicationController
  include Resourceful

  def self.model
    List
  end

  def self.include_assoc
    :restaurants
  end

  def update
    if @list.update(list_params)
      render json: @list
    else
      render json: @list.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @listings = @list.listings.includes(restaurant: :dinings)
    @dinings = @list.dinings
  end

  private

  def list_params
    params.require(:list).permit(:ord)
  end
end
