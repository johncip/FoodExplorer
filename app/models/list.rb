class List < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :user_id
  has_many :listings
  has_many :restaurants, through: :listings
end
