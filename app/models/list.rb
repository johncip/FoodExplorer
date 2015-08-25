# A user-created list of restaurants. Ordered.
class List < ActiveRecord::Base
  default_scope { order('lists.ord') }

  alias_attribute :private?, :private
  alias_attribute :favorite?, :favorite
  delegate :size, to: :listings

  belongs_to :author, class_name: :User, foreign_key: :user_id
  has_many :listings, dependent: :destroy
  has_many :restaurants, through: :listings
  has_many :dinings, through: :restaurants

  validates :author, :title, :ord, presence: true
  validates :favorite, :private, inclusion: { in: [true, false] }

  def new_listing_by_author(opts = {})
    opts.merge!(contributor: author)
    listings.new(opts)
  end

  def add(yelp_id)
    rest = Restaurant.find_or_create_by_yelp_id(yelp_id)
    listing = new_listing_by_author(restaurant: rest)
    listing.save!
    listing
  end

  def image_url
    restaurants.first.image_url
  end
end
