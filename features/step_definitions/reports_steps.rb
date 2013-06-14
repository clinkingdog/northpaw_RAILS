### GIVEN ###
Given /^I am signed in as a GM$/ do
  create_gm
  sign_in @gm
end

### WHEN ###
When /^I post a report$/ do
  create_report
  post_report @report
end

### THEN ###
Then /^I see the report submitted$/ do
  # find report on the page
  # check the text is equal to @report.text
end

Then /^the report is visible to players$/ do
  visit '/reports'
  # find first report on page
  # check the text is equal to @report.text
end
