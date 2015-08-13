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
    yelp = Yelp.client.business(yelp_id)

    self.attributes = {
      yelp_id: yelp.id,
      name: yelp.name,
      state: yelp.location.state_code,
      city: yelp.location.city,
      zip: yelp.location.postal_code,
      hood: yelp.location.neighborhoods[0],
      address: yelp.location.address.join(' ')
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

  YELP_ATTRS = %w(url rating geo image_url rating_img closed? categories)

  def url
    yelp_data.url
  end

  def rating
    yelp_data.rating
  end

  def geo
    [yelp_data.location.coordinate.latitude,
     yelp_data.location.coordinate.longitude]
  end

  def image_url
    yelp_data.image_url
  end

  def rating_img
    yelp_data.rating_img_url_small
  end

  def closed?
    yelp_data.is_closed
  end

  def categories
    yelp_data.categories
  end
end
