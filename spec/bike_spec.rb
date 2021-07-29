require 'bike'

describe Bike do

  before(:each) do
    @bike = Bike.new
  end

  it "responds to release bike method" do
    expect(@bike).to respond_to('working?')
  end

  # the one line version isn't failing tests as expected
  # subject { @bike }
  # it { respond_to('working?') }

end

