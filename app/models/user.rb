class User < ActiveRecord::Base
  attr_accessible :class_of, :email, :is_admin, :name, :password, :password_confirmation
  #has_secure_password
  has_many :comm_methods

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token


  private

  	def create_remember_token
  		self.remember_token = SecureRandome.urls_base64
  	end
end
