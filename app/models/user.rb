class User < ActiveRecord::Base
  has_many :comments
  has_many :blogs

  attr_accessible :login, :email, :password, :password_confirmation
end
