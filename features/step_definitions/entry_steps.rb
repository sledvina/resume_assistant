Given(/^a visitor visits the create education entry page$/) do
  visit new_education_entry_path
end


When(/^they submit invalid education entry information$/) do
  
          click_button "Create Education entry"
end

When(/^they submit valid education entry information$/) do
  
          fill_in "School", with: "Example School"
          fill_in "Graduation date", with: "2015"
          fill_in "Degree", with: "Bachelors"
          fill_in "Major", with: "Comp Sci"
          fill_in "Gpa", with: "4.00"
          fill_in "Accolades", with: "Summa cum Laude"
         
         click_button "Create Education entry"
end

Then(/^they should see the education entry preview page$/) do
  
          expect(page).to have_content("Example School", 
                                        "2015", 
                                        "Bachelors", 
                                        "Comp Sci", 
                                        "4.00", 
                                        "Summa cum Laude")
end

Given(/^User is on the view resume page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^a valid resume exists$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^a valid entry exists$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^they should see a page with the standard resume information and entry information$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^a no valid entry exists$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^a valid no resume exists$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^they should see a no resume error page$/) do
  pending # express the regexp above with the code you wish you had
end