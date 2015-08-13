module LoginRequired
  extend ActiveSupport::Concern

  included do
    before_action :redirect_unless_logged_in
  end
end
