class User < ActiveRecord::Base
  has_many :places

  attr_accessible :name, :description, :email
end