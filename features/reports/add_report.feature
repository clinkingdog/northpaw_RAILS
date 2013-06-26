Feature: Add a report
  In order to give the players information
  A GM
  Should be able to post a report
  
    Scenario: Posting a report
      Given I am signed in as an MC
      When I post a report
      Then I see that report
    
    Scenario: Players viewing reports
      Given an MC has posted a report
      When I sign in as a Player
      Then I see that report
    