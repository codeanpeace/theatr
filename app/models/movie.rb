class Movie < ActiveRecord::Base
  attr_accessible :description, :duration, :rating, :title, :year

  has_many :showings
  has_many :tickets, :through => :showings
end
