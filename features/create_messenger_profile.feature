Feature: Create a profile for messengers
	As a bicycle courier 
	I want to create a profile 
	So that Business can hire me to deliver messages
	
	Scenario: Creating a new profile
		Given I am signed in
		Then I should see a page to create a messenger profile
		When I fill in "messenger_name" with "Tod"
		And I press "create"
		Then I should see "Profile Created!"
		And I should see "Tod"
	
	
	
		