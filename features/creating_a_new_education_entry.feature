Feature: creating a new educational entry
	
	Scenario: Unsuccessful creation of education entry
		Given a visitor visits the create education entry page
		When they submit invalid education entry information
		Then they should see an error message
		
	Scenario: Successful creation of education entry
		Given a visitor visits the create education entry page
		When they submit valid education entry information
		Then they should see the education entry preview page