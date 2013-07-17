class Place < ActiveRecord::Base
  attr_accessible :name, :location
  has_and_belongs_to_many :users

end