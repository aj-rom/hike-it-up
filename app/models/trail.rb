class Trail < ActiveRecord::Base
  has_many :reviews
  has_many :trail_images
end
