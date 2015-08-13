class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?  
  before_action :find_model, only: [:show]

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def log_in!(user)
    user.reset_session_token!
    session[:session_token] = user.session_token
  end

  def log_out!
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def logged_in?
    !!current_user
  end

  def redirect_unless_logged_in
    redirect_to new_session_url unless logged_in?
  end

  def index
    render json: self.class.model.all
  end

  def find_model
    instance_variable_set(ivar_name, self.class.model.find(params[:id]))
  end

  private

  def ivar_name
    '@' + self.class.model.to_s.to_s.underscore
  end

end
