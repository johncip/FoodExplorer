class Listing < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :list
  belongs_to :contributor, class_name: :User, foreign_key: :user_id

  validates :restaurant, :list, :contributor, presence: true
  validates :restaurant, uniqueness: { scope: :list }
end
