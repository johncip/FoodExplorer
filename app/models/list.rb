class List < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :user_id
  has_many :listings, dependent: :destroy
  has_many :restaurants, through: :listings

  validates :author, :title, presence: true
  validates :favorite, inclusion: { in: [true, false] }

  def new_listing_by_author(opts = {})
    opts.merge!({
      list: self,
      contributor: author
    })

    Listing.new(opts)
  end
end
