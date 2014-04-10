Given(/^a visitor visits the create page$/) do
  visit new_resume_path
end
  
When(/^they submit invalid resume information$/) do
  click_button "Create Resume"
end

Then(/^they should see an error message$/) do
  expect(page).to have_content("errors prohibited this", "from being saved:")
end

When(/^they submit valid resume information$/) do
  fill_in "Resume name", with: "Example Resume"
  fill_in "User name", with: "Example User"
  fill_in "Email", with: "User@example.com"
  fill_in "Phone", with: "4145556666"
  fill_in "Address", with: "1111 Example Address ln Exampletown, EX 55555"
  click_button "Create Resume"
end

Then(/^they should see the resume preview page$/) do
  expect(page).to have_content("Example Resume", "Example User", "User@example.com", "4145556666",
                               "1111 Example Address ln Exampletown, EX 55555")
end

