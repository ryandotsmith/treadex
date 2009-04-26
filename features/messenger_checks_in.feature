Feature: A messenger checks in to the queue
	As a messenger
	I want to check in to the waiting queue 
	So that I can get work 
	
	Scenario: Checking in 
		Given I am a messenger and I am signed in 
		And I am currently checked out 
		When I goto my profile page 
		Then I should see "you are currently checked out"
		When I press "check in"
		Then I should see my status updated as "waiting"
		