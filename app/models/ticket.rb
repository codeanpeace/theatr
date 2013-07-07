class Ticket < ActiveRecord::Base
  attr_accessible :price, :row, :seat, :type, :movie_id, :showing_id

  belongs_to :showing
  delegate :movie_id, :to => :showing, :allow_nil => false
end
