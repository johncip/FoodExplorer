# Dinings are a resource joining Users and Restaurants.
# The controller is used to update favorite, visited, or notes.
class Api::DiningsController < ApplicationController
  include Resourceful

  def self.model
    Dining
  end

  def update
    if @dining.update(dining_params)
      render json: @dining
    else
      render json: @dining.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def assign_collection
    @dinings = Dining.all.includes(:diner, :restaurant)
  end

  def dining_params
    params.require(:dining).permit(:favorite, :visited, :notes)
  end
end
