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
      # TODO better login (display errors, etc)
      redirect_to new_session_url
    end
  end

  def destroy
    log_out!
    render json: {}
  end

  def guest
    user = User.find_by_username!('admin')
    log_in!(user)
    render json: {'as': 'if'}
  end
end
