module ResourceController
  extend ActiveSupport::Concern

  include LoginRequired

  included do
    before_action :find_model, only: [:show]
    before_action :get_collection, only: [:index]
  end

  def get_collection
    instance_variable_set(ivar_name.pluralize, self.class.model.all)
  end

  def find_model
    instance_variable_set(ivar_name, self.class.model.find(params[:id]))
  end

  def ivar_name
    '@' + self.class.model.to_s.to_s.underscore
  end

end
