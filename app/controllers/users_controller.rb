# Controller actions for users.
# TODO: change password form
class UsersController < ApplicationController
  before_action :redirect_if_logged_in, only: [:new, :create]

  def new
    @user = User.new
  end
end
