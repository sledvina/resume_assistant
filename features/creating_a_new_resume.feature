Feature: Creating a resume
	
	Scenario: Unsuccessful creation
		Given a visitor visits the create page
		When they submit invalid resume information
		Then they should see an error message
		
	Scenario: Successful creation
		Given a visitor visits the create page
		When they submit valid resume information
		Then they should see the resume preview page