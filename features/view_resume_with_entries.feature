Feature: View resume with entries

  Scenario: Successful Rendering
	Given User is on the view resume page
		And a valid resume exists
		And a valid entry exists
	Then they should see a page with the standard resume information and entry information

  Scenario: Successful rendering with no entries
	Given User is on the view resume page
		And a valid resume exists
		And a no valid entry exists
	Then they should see the resume preview page
		
  Scenario: Unuccessful rendering with no resume		
	Given User is on the view resume page
		And a valid no resume exists
	Then they should see a no resume error page
		