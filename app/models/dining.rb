class Dining < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :diner, class_name: :User, foreign_key: :user_id, primary_key: :id

  validates :diner, :restaurant, presence: true
  validates :favorite, inclusion: { in: [true, false] }
  validates :visited, inclusion: { in: [true, false] }
  validates :restaurant, uniqueness: { scope: :diner }

  alias_attribute :favorite?, :favorite
  alias_attribute :visited?, :visited
end
