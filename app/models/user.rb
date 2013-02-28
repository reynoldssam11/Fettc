class User < ActiveRecord::Base
  attr_accessible :class_of, :email, :is_admin, :name, :password

  has_many :comm_methods
end
