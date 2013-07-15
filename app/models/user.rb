class User < ActiveRecord::Base
  has_many :favorites
  attr_accessible :name, :description, :password
  validates :name, :password, presence: :true
  validates :name, :password, uniqueness: :true
  validates :password, length: { minimum: 8 }

end