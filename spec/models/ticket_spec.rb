require 'spec_helper'

describe Ticket do
  before do
    @movie = Movie.new(
      :title => 'Pursuit of Happyness',
      :description => "A struggling salesman takes custody of his son as he's poised to begin a life-changing professional endeavor.",
      :duration => 117,
      :rating => 'PG-13',
      :year => 2006
    )
    @showing1 = Showing.new(
      :showing_date => '2006-10-25',
      :showing_time => '00:00:00',
      :movie_id => @movie.id
    )
    @showing2 = Showing.new(
      :showing_date => '2006-10-25',
      :showing_time => '10:00:00',
      :movie_id => @movie.id
    )
    @showing3 = Showing.new(
      :showing_date => '2006-10-28',
      :showing_time => '15:00:00',
      :movie_id => @movie.id
    )
    @ticket11a = Ticket.new(
      :row => '1',
      :seat => 'A',
      :showing_id => @showing1.id
    )
    @ticket12b = Ticket.new(
      :row => '2',
      :seat => 'B',
      :showing_id => @showing1.id
    )
    @ticket13c = Ticket.new(
      :row => '3',
      :seat => 'C',
      :showing_id => @showing1.id
    )
    @ticket21a = Ticket.new(
      :row => '1',
      :seat => 'A',
      :showing_id => @showing2.id
    )
    @ticket22b = Ticket.new(
      :row => '2',
      :seat => 'B',
      :showing_id => @showing2.id
    )
    @ticket23c = Ticket.new(
      :row => '3',
      :seat => 'C',
      :showing_id => @showing2.id
    )
    @ticket31a = Ticket.new(
      :row => '1',
      :seat => 'A',
      :showing_id => @showing3.id
    )
    @ticket32b = Ticket.new(
      :row => '2',
      :seat => 'B',
      :showing_id => @showing3.id
    )
    @ticket33c = Ticket.new(
      :row => '3',
      :seat => 'C',
      :showing_id => @showing3.id
    )
  end

  it "must be valid" do
    expect(@ticket11a.valid?).to eq(true)
    expect(@ticket12b.valid?).to eq(true)
    expect(@ticket13c.valid?).to eq(true)
    expect(@ticket21a.valid?).to eq(true)
    expect(@ticket22b.valid?).to eq(true)
    expect(@ticket23c.valid?).to eq(true)
    expect(@ticket31a.valid?).to eq(true)
    expect(@ticket32b.valid?).to eq(true)
    expect(@ticket33c.valid?).to eq(true)
  end

  it "must have right row" do
    expect(@ticket11a.row).to eq('1')
    expect(@ticket12b.row).to eq('2')
    expect(@ticket13c.row).to eq('3')
    expect(@ticket21a.row).to eq('1')
    expect(@ticket22b.row).to eq('2')
    expect(@ticket23c.row).to eq('3')
    expect(@ticket31a.row).to eq('1')
    expect(@ticket32b.row).to eq('2')
    expect(@ticket33c.row).to eq('3')
  end

  it "must have right seat" do
    expect(@ticket11a.seat).to eq('A')
    expect(@ticket12b.seat).to eq('B')
    expect(@ticket13c.seat).to eq('C')
    expect(@ticket21a.seat).to eq('A')
    expect(@ticket22b.seat).to eq('B')
    expect(@ticket23c.seat).to eq('C')
    expect(@ticket31a.seat).to eq('A')
    expect(@ticket32b.seat).to eq('B')
    expect(@ticket33c.seat).to eq('C')
  end


  it "must have right showing_id" do
    expect(@ticket11a.showing_id).to eq(@showing1.id)
    expect(@ticket12b.showing_id).to eq(@showing1.id)
    expect(@ticket13c.showing_id).to eq(@showing1.id)
    expect(@ticket21a.showing_id).to eq(@showing2.id)
    expect(@ticket22b.showing_id).to eq(@showing2.id)
    expect(@ticket23c.showing_id).to eq(@showing2.id)
    expect(@ticket31a.showing_id).to eq(@showing3.id)
    expect(@ticket32b.showing_id).to eq(@showing3.id)
    expect(@ticket33c.showing_id).to eq(@showing3.id)
  end

  it "must have right movie_id" do
    expect(@showing1.movie_id).to eq(@movie.id)
    expect(@showing2.movie_id).to eq(@movie.id)
    expect(@showing3.movie_id).to eq(@movie.id)
    expect(@showing1.movie_id).to eq(@movie.id)
    expect(@showing2.movie_id).to eq(@movie.id)
    expect(@showing3.movie_id).to eq(@movie.id)
    expect(@showing1.movie_id).to eq(@movie.id)
    expect(@showing2.movie_id).to eq(@movie.id)
    expect(@showing3.movie_id).to eq(@movie.id)
  end

end