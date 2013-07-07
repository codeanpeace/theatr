require 'spec_helper'

describe Showing do
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
  end

  it "must be valid" do
    expect(@showing1.valid?).to eq(true)
    expect(@showing2.valid?).to eq(true)
    expect(@showing3.valid?).to eq(true)
  end

  it "must have right date" do
    expect(@showing1.showing_date).to eq(Date.parse('2006-10-25'))
    expect(@showing2.showing_date).to eq(Date.parse('2006-10-25'))
    expect(@showing3.showing_date).to eq(Date.parse('2006-10-28'))
  end

  it "must have right time" do
    expect(@showing1.showing_time.strftime("%T")).to eq('00:00:00')
    expect(@showing2.showing_time.strftime("%T")).to eq('10:00:00')
    expect(@showing3.showing_time.strftime("%T")).to eq('15:00:00')
  end

  it "must have right movie_id" do
    expect(@showing1.movie_id).to eq(@movie.id)
    expect(@showing2.movie_id).to eq(@movie.id)
    expect(@showing3.movie_id).to eq(@movie.id)
  end

end
