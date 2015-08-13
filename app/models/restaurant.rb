class Restaurant < ActiveRecord::Base
  has_many :listings, dependent: :destroy

  validates :yelp_id, :name, :city, presence: true
  validates :state, inclusion: { in: US_STATES }
  validates :yelp_id, uniqueness: true

  def self.create_by_yelp_id!(yelp_id)
    object = new_with_yelp_id(yelp_id)
    object.save!
    object
  end

  def self.new_with_yelp_id(yelp_id)
    object = new(yelp_id: yelp_id)
    object.furnish!
    object
  end

  def self.find_or_create_by_yelp_id(yelp_id)
    find_by_yelp_id(yelp_id) || create_by_yelp_id!(yelp_id)
  end

  def furnish!
    fail unless yelp_id

    self.attributes = {
      yelp_id: yelp_data.id,
      name: yelp_data.name,
      state: yelp_data.location.state_code,
      city: yelp_data.location.city,
      zip: yelp_data.location.postal_code,
      hood: yelp_data.location.neighborhoods[0],
      address: yelp_data.location.address.join(' '),
      url: yelp_data.url,
      image_url: yelp_data.image_url,
      rating: yelp_data.rating,
      rating_img_url: yelp_data.rating_img_url,
      is_closed: yelp_data.is_closed
    }
    self.save! if persisted?
    self
  end

  def yelp_data
    @yelp_data ||= Yelp.client.business(yelp_id)
  end

  # -------------------------------------------------------------------------
  # Dynamic attrs
  # -------------------------------------------------------------------------

  YELP_ATTRS = ['categories', 'geo', 'neighborhoods']

  def categories
    yelp_data.categories
  end

  def neighborhoods
    yelp_data.location.neighborhoods
  end

  def geo
    [yelp_data.location.coordinate.latitude,
     yelp_data.location.coordinate.longitude]
  end

end
