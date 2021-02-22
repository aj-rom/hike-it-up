class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  has_many :trails, through: :reviews
end
