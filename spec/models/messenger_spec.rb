require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Messenger do
  before(:each) do
    @valid_attributes = {
      :handle => "value for handle",
      :bio => "value for bio",
      :mobile => "value for mobile",
      :rate => "value for rate"
    }
  end

  it "should create a new instance given valid attributes" do
    Messenger.create!(@valid_attributes)
  end
end


describe "deciding if a messenger is around" do

  before(:each) do
    @messenger = Factory( :messenger )
  end
  
  it "should determine if a messenger is around by looking at the last time he checked in" do
    @messenger.checked_in = DateTime.now
    @messenger.around?.should eql( true )
    @messenger.checked_in = DateTime.now - 5.hours
    @messenger.around?.should eql( false )
    @messenger.checked_in = DateTime.now - 2.hours
    @messenger.around?.should eql( true )
  end
  
  it "should look at all of the messengers and determine if any are available" do
    Messenger.are_available?.should eql( false )
  end


end