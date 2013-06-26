### GIVEN ###
Given(/^I am not signed in$/) do
  pending
end

Given(/^I am signed in as a player$/) do
  pending
end

Given /^I am signed in as an MC$/ do
  pending
  #create_mc
  #sign_in @mc
end

Given /^an MC has posted a report$/ do
  pending
  #create_mc
  #sign_in @mc
  #create_report
  #post_report @report
end

### WHEN ###
When(/^I visit the report entry page$/) do
  pending
end

When /^I post a report$/ do
  pending
  #create_report
  #post_report @report
end

When /^I sign in as a Player$/ do
  pending
  #create_player
  #sign_in @player
end

### THEN ###
Then(/^I see a message telling me I cannot post reports$/) do
  pending
end

Then /^I see that report$/ do
  pending
  #page.should have_content @report.text
end
