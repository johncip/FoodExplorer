# Controller actions for lists. Just a regular resource.
class Api::ListsController < ApplicationController
  include Resourceful

  def self.model
    List
  end

  def self.include_assoc
    :restaurants
  end

  def assign_collection
    if current_user
      @lists = List.where(author: current_user)
    else
      @lists = List.all
    end
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
    params.require(:list).permit(:ord, :description)
  end
end
