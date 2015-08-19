# Controller for sign in and out
class SessionsController < ApplicationController
  before_action :redirect_if_logged_in, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    user = User.find_by_credentials(*params[:user].values)
    if user
      log_in!(user)
      redirect_to root_url
    else
      redirect_to new_session_url
    end
  end

  def destroy
    log_out!
    render json: {}
  end

  # Logs in a guest user. For now, just hard coded.
  # TODO: create temporary users
  def guest
    user = User.find_by_username!('admin')
    log_in!(user)
    render json: {}
  end
end
