# Joins restaurants to lists. Ordered.
class Listing < ActiveRecord::Base
  default_scope { order('listings.ord') }

  belongs_to :restaurant
  belongs_to :list
  belongs_to :contributor, class_name: :User, foreign_key: :user_id

  has_many :dinings, through: :restaurant

  validates :restaurant, :list, :contributor, :ord, presence: true
  validates :restaurant, uniqueness: { scope: :list }
end
