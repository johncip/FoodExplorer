class User < ActiveRecord::Base
  attr_reader :password

  has_many :boards

  validates :password, length: { minimum: 6, allow_nil: true }
  validates :username, :password_digest, :session_token, presence: true

  after_initialize :ensure_session_token

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    return user if user && user.password?(password)
  end

  def reset_session_token!
    self.session_token = generate_session_token
    self.save

    session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  private

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

  def generate_session_token
    SecureRandom.urlsafe_base64
  end

  def password?(password)
    BCrypt::Password.new(password_digest) == password
  end
end
