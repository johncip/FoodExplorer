# Common code for a generic resource controller.
module ResourceController
  extend ActiveSupport::Concern

  include LoginRequired

  included do
    before_action :find_model, only: [:show]
    before_action :get_collection, only: [:index]
  end

  # Creates an ivar for a collection of the controller's associated model
  # instances.
  #
  # e.g. @restaurants = Restaurant.all
  def get_collection
    instance_variable_set(ivar_name.pluralize, self.class.model.all)
  end

  # Creates an ivar for the model instance corresponding to the controller
  # and the params hash id.
  #
  # e.g. @restaurant = Restaurant.find(params[:id])
  def find_model
    instance_variable_set(ivar_name, self.class.model.find(params[:id]))
  end

  # Returns the usual name for an instance variable for this controller/model.
  #
  # e.g. @restaurant
  def ivar_name
    '@' + self.class.model.to_s.to_s.underscore
  end
end
