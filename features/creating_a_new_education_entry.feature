Feature: creating a new educational entry
	
	Scenario: Unsuccessful creation
		Given a visitor visits the create education entry page
		When they submit invalid entry information
		Then they should see an error message
		
	Scenario: Successful creation
		Given a visitor visits the create education entry page
		When they submit valid entry information
		Then they should see the entry preview page