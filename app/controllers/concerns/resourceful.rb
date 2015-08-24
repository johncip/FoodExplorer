# Common code for a generic resource controller.
module Resourceful
  extend ActiveSupport::Concern

  include LoginRequired

  included do
    before_action :create_model, only: [:new, :create]
    before_action :find_model, only: [:show, :update]
    before_action :assign_collection, only: [:index]
  end

  # Creates an ivar for a collection of the controller's associated model
  # instances.
  #
  # e.g. @restaurants = Restaurant.all
  def assign_collection
    query = self.class.model.all.includes(self.class.include_assoc)
    instance_variable_set(ivar_name.pluralize, query)
  end

  # Creates an ivar for the model instance corresponding to the controller
  # and the params hash id.
  #
  # e.g. @restaurant = Restaurant.find(params[:id])
  def find_model
    instance_variable_set(ivar_name, self.class.model.find(params[:id]))
  end

  def create_model
    instance_variable_set(ivar_name, self.class.model.new())
  end

  # Returns the usual name for an instance variable for this controller/model.
  #
  # e.g. @restaurant
  def ivar_name
    '@' + self.class.model.to_s.to_s.underscore
  end

  # assign_collection sometimes needs to include an association in order to
  # avoid making n queries. The default is to not include one.
  module ClassMethods
    def include_assoc
      nil
    end
  end
end
