class Restaurant < ActiveRecord::Base
  has_many :listings, dependent: :destroy

  validates :yelp_id, :name, :city, presence: true
  validates :state, inclusion: { in: US_STATES }
end
