Given(/^a visitor visits the create entry page$/) do
  visit new_entry_path
end

When(/^they submit invalid entry information$/) do
  pending # express the regexp above with the code you wish you had
          # the definition of this step will depend on architecture choices  
          click_button "Create Entry"
end

When(/^they submit valid entry information$/) do
  pending # express the regexp above with the code you wish you had
          # the definition of this step will depend on architecture choices
          fill_in "Entry Type", with: "Example Entry"
end

Then(/^they should see the entry preview page$/) do
  pending # express the regexp above with the code you wish you had
          # the definition of this step will depend on architecture choices
          expect(page).to have_content("Entry Type")
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