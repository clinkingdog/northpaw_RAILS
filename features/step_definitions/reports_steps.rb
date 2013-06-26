### GIVEN ###
Given /^I am signed in as an MC$/ do
  create_mc
  sign_in @mc
end

Given /^an MC has posted a report$/ do
  create_mc
  sign_in @mc
  create_report
  post_report @report
end

### WHEN ###
When /^I post a report$/ do
  create_report
  post_report @report
end

When /^I sign in as a Player$/ do
  create_player
  sign_in @player
end

### THEN ###
Then /^I see that report$/ do
  page.should have_content @report.text
end
