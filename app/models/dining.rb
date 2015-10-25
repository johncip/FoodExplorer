# == Schema Information
#
# Table name: dinings
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  restaurant_id :integer
#  visited       :boolean          default(FALSE), not null
#  favorite      :boolean          default(FALSE), not null
#  notes         :text             default(""), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

# Joins users to restaurants.
class Dining < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :diner, class_name: :User, foreign_key: :user_id, primary_key: :id

  validates :diner, :restaurant, presence: true
  validates :favorite, inclusion: { in: [true, false] }
  validates :visited, inclusion: { in: [true, false] }
  validates :restaurant, uniqueness: { scope: :diner }

  alias_attribute :favorite?, :favorite
  alias_attribute :visited?, :visited

  def self.exists_with_flag(user_id, restaurant_id, flag)
    result = find_by_user_id_and_restaurant_id(user_id, restaurant_id)
    !result.nil? && result.send(flag)
  end
end
