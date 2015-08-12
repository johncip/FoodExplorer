class List < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :user_id
  has_many :listings, dependent: :destroy
  has_many :restaurants, through: :listings

  validates :author, :title, presence: true
  validates :favorite, inclusion: { in: [true, false] }

  def new_listing_by_author(opts = {})
    opts.merge!(contributor: author)
    self.listings.new(opts)
  end

  def add(yelp_id)
    rest = Restaurant.find_or_create_by_yelp_id(yelp_id)
    listing = new_listing_by_author(restaurant: rest)
    listing.save!
    listing
  end

  def size
    listings.size
  end
end
