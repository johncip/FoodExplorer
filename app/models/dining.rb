class Dining < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validates :favorite, inclusion: { in: [true, false] }
  validates :visited, inclusion: { in: [true, false] }
  validates :user, :restaurant, :notes, presence: true

  alias_attribute :favorite?, :favorite
  alias_attribute :visited?, :visited
end
