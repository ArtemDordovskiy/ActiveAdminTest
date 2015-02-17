class User < ActiveRecord::Base
  has_many :comments
  has_many :blogs

  attr_accessible :login, :email, :password, :password_confirmation

  attr_accessor :password
  before_save :encrypt_password

  def encrypt_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.crypt = BCrypt::Engine.hash_secret(password, salt)
    end
  end
end
