# Controller actions for restaurants. Just a regular resource.
class Api::RestaurantsController < ApplicationController
  include Resourceful

  before_action :find_model, only: [:show, :update, :favorite]

  def self.model
    Restaurant
  end

  def self.include_assoc
    :dinings
  end

  def favorite
    dining = Dining.find_or_create_by(restaurant: @restaurant,
                                      diner: current_user)
    dining.favorite = true?(params[:favorite])

    if dining.save
      render json: @restaurant
    else
      render json: @restaurant.errors.full_messages, status: 422
    end

    ActiveRecord::Base.connection.clear_query_cache
    Dining.reset_column_information
  end

  private

  def assign_collection
    @restaurants = Restaurant.all.includes(:dinings)
                   .where('dinings.user_id' => current_user.id)
                   .references(:dinings).all
  end

  def true?(str)
    ActiveRecord::Type::Boolean.new.type_cast_from_user(str)
  end
end
