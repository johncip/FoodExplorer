class SessionsController < ApplicationController
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
    redirect_to new_session_url
  end
end
