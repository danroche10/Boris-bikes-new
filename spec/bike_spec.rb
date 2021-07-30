require 'bike'

describe Bike do
  
  it "responds to release bike method" do
    expect(subject).to respond_to('working?')
  end

end

