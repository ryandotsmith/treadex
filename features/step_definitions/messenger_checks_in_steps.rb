Given /^I am a messenger and I am signed in$/ do
  Given %{I am signed in}
  @user = User.find_by_email("email@person.com")
  @messenger = Factory( :messenger , :user => @user )
end


Given /^I am currently checked out$/ do
  @messenger.around.should eql( false )
end

Given /^I goto my profile page$/ do
  visit "messengers/#{@messenger.id}"
end

