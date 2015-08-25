# Controller actions for restaurants. Just a regular resource.
class Api::RestaurantsController < ApplicationController
  include Resourceful

  before_action :find_model, only: [:show, :update, :favorite, :visited, :note]

  def self.model
    Restaurant
  end

  def self.include_assoc
    :dinings
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
