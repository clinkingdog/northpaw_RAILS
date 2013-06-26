Feature: Add a report
  In order to give the players information
  A GM
  Should be able to post a report
  
    Scenario: Visitor cannot access report page
      Given I am not signed in
      When I visit the report entry page
      Then I see a message telling me I cannot post reports
      
    Scenario: Player cannot access report page
      Given I am signed in as a player
      When I visit the report entry page
      Then I see a message telling me I cannot post reports
      
    Scenario: Visitor cannot post report
      Given I am not signed in
      When I post a report
      Then I see a message telling me I cannot post reports
      
    Scenario: Player cannot post report
      Given I am signed in as a player
      When I post a report
      Then I see a message telling me I cannot post reports
      
    Scenario: MC posting a report
      Given I am signed in as an MC
      When I post a report
      Then I see that report
    
    Scenario: Players viewing reports
      Given an MC has posted a report
      When I sign in as a Player
      Then I see that report
    