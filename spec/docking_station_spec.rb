require 'docking_station'
require 'bike'

describe DockingStation do
   before(:each) do
     @docking_station = DockingStation.new
   end
  
  # it "respond to release bike method" do
  #   expect(@docking_station).to respond_to('release_bike')
  # end
  # one line version of above
  
  # test 1
  subject { @docking_station }
  it { respond_to('release_bike') }
  # test 2 

  # it "responds to working? in bike class" do
  #   expect(something).to eq(true)
  # end
 
  # it { respond_to('working?')}
  # same non-failing issue as before ? 

end

