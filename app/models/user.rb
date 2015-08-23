# Users are authenticated but also have lists, favorite restaurants, etc.
class User < ActiveRecord::Base
  include Authenticatable

  has_many :lists
  has_many :dinings, dependent: :destroy
  has_many :restaurants, through: :dinings

  validates :username, presence: true, uniqueness: true

  alias_attribute :guest?, :guest
end
