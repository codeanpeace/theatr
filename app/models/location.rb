class Location < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :showings
end
