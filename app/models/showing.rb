class Showing < ActiveRecord::Base
  attr_accessible :showing_date, :showing_time

  belongs_to :location
  belongs_to :movie
  has_many :tickets
end
