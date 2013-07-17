class Favorite < ActiveRecord::Base
  attr_accessible :name, :location
  belongs_to :User
end