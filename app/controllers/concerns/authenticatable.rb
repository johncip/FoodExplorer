module Authenticatable
  extend ActiveSupport::Concern

  included do
    validates :password, length: { minimum: 6, allow_nil: true }
    validates :password_digest, :session_token, presence: true, uniqueness: true

    after_initialize :ensure_session_token

    attr_reader :password
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

  module ClassMethods
    def find_by_credentials(username, password)
      user = User.find_by_username(username)
      return user if user && user.password?(password)
    end
  end
end
