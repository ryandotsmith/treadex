Feature: Finding a messenger to deliver a parcel 
	As a business owner 
	I want to find a messenger to deliver my package 

	Scenario: Picking an arbitrary messenger
		Given I am on the messengers index page 
		Then I should see "Hire next available messenger"
		When I follow "Hire next available messenger"
		Then I should see "Introduce Yourself "
		When I fill in "customer_name" with "Microsoft"
		And I fill in "customer_email" with "oldmansoftware@arpanet.com"
		When I press "submit"
		Then I should see "Your messenger will be in contact with your shortly"
		And a new mission should be created with status in progress
		
	Scenario: Picking a specific courier
		Given I am on the messengers index page 
		Then I should see a list of messengers who are checked in 
		When I select a messenger 
		Then I should see the messengers profile
		And I should see a link to "hire me"
		When I press "hire me "
		Then I should see "your courier will be in contact with you shortly"
		