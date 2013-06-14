Feature: Add a report
  In order to give the players information
  A GM
  Should be able to post a report
  
    Scenario: A new report
      Given I am signed in as a GM
      When I post a report
      Then I see the report submitted
        And the report is visible to players
