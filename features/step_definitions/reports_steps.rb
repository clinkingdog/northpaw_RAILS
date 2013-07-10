### UTILITY METHODS ###

#TODO - refactor these into common helper with user_steps.rb

def create_player
  @player ||= { :name => "Ritsuka Player", :email => "ritsuka@example.com",
    :password => "changeme", :password_confirmation => "changeme" }
  
  delete_player
  
  @player_user = FactoryGirl.create(:user, email: @player[:email], password: @player[:password], confirmed_at: Time.now)
end

def delete_player
  @player_user ||= User.first conditions: {:email => @player[:email]}
  @player_user.destroy unless @player_user.nil?
end

def player_sign_in
  visit '/users/sign_out'
  visit '/users/sign_in'
  fill_in "Email", :with => @player[:email]
  fill_in "Password", :with => @player[:password]
  click_button "Sign in"
end

### GIVEN ###
Given(/^I am not signed in$/) do
  visit '/users/sign_out'
end

Given(/^I am signed in as a player$/) do
  create_player
  player_sign_in
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
  visit '/reports/new'
end

When /^I post a report$/ do
  pending
end

When /^I sign in as a Player$/ do
  pending
  #create_player
  #sign_in @player
end

### THEN ###
Then(/^I see a message telling me I cannot post reports$/) do
  page.should have_content 'cannot create reports unless you are signed in as an MC'
end

Then(/^I see a message telling me I need to sign in$/) do
  page.should have_content 'You need to sign in or sign up before continuing.'
end

Then /^I see that report$/ do
  pending
  #page.should have_content @report.text
end
