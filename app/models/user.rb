# TODO: pull out auth stuff
class User < ActiveRecord::Base

  has_many :lists
  has_many :dinings, dependent: :destroy
  has_many :restaurants, through: :dinings

  validates :password, length: { minimum: 6, allow_nil: true }
  validates :username, :password_digest, :session_token,
    presence: true, uniqueness: true

  after_initialize :ensure_session_token

  alias_attribute :guest?, :guest
  attr_reader :password

  def favorite?(restaurant)
    dining = dinings.where(restaurant: restaurant).first
    return !!dining && dining.favorite?
  end

  def visited?(restaurant)
    dining = dinings.where(restaurant: restaurant).first
    return !!dining && dining.visited?
  end


  # --- auth ---------------------------------------------------------------

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    return user if user && user.password?(password)
  end

  def reset_session_token!
    self.session_token = generate_session_token
    save

    session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def password?(password)
    BCrypt::Password.new(password_digest) == password
  end

  private

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

  def generate_session_token
    SecureRandom.urlsafe_base64
  end
end
