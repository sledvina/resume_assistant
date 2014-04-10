Feature: creating a new entry
	
	Scenario: Unsuccessful creation
		Given a visitor visits the create entry page
		When they submit invalid entry information
		Then they should see an error message
		
	Scenario: Successful creation
		Given a visitor visits the create entry page
		When they submit valid entry information
		Then they should see the entry preview page