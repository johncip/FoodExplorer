module LoginRequired
  extend ActiveSupport::Concern

  included do
    before_action :redirect_unless_logged_in
  end

  def redirect_unless_logged_in
    redirect_to new_session_url unless logged_in?
  end
end
