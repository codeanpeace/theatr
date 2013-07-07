require 'spec_helper'

describe Movie do
  before do
    @movie = Movie.new(
      :title => 'Pursuit of Happyness',
      :description => "A struggling salesman takes custody of his son as he's poised to begin a life-changing professional endeavor.",
      :duration => 117,
      :rating => 'PG-13',
      :year => 2006
    )
  end

  it "must be valid" do
    expect(@movie.valid?).to eq(true)
  end

  it "must have right title" do
    expect(@movie.title).to eq('Pursuit of Happyness')
  end

  it "must have right description" do
    expect(@movie.description).to eq("A struggling salesman takes custody of his son as he's poised to begin a life-changing professional endeavor.")
  end

  it "must have right duration" do
    expect(@movie.duration).to eq(117)
  end

  it "must have right rating" do
    expect(@movie.rating).to eq('PG-13')
  end

  it "must have right year" do
    expect(@movie.year).to eq(2006)
  end

end