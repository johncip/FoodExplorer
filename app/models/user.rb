class User < ActiveRecord::Base
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :username, :password_digest, :session_token, presence: true
  after_initialize :ensure_session_token

  has_many :boards

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    return user if user && user.password?(password)
  end

  attr_reader :password

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

  def reset_session_token!
    self.session_token = generate_session_token
    self.save

    session_token
  end

  def generate_session_token
    SecureRandom.urlsafe_base64
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def password?(password)
    BCrypt::Password.new(password_digest) == password
  end
end
