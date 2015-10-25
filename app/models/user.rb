# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  description     :string
#  location        :string
#  image_url       :string
#  guest           :boolean          default(FALSE), not null
#

# Users are authenticated but also have lists, favorite restaurants, etc.
class User < ActiveRecord::Base
  include Authenticatable

  has_many :lists
  has_many :dinings, dependent: :destroy
  has_many :restaurants, through: :dinings

  validates :username, presence: true, uniqueness: true

  alias_attribute :guest?, :guest
end
