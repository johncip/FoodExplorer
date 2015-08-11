class Listing < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :list
  belongs_to :contributor, class_name: :User, foreign_key: :user_id

  validates :restaurant, :list, :user, presence: true
  validates :favorite, inclusion: { in: [true, false] }
end
