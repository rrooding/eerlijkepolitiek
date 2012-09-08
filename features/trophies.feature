Feature:
  As a user
  I want to see an overview of the trophies
  So that I can see which trophies there are and who earned them

  @wip
  Scenario: Visiting the trophies page
    When I visit the trophies page
    Then I see a list of trophies
    And I see which politicians have earned them

  Scenario: List of trophies
    When I visit the trophies page
    Then I see trophies with the following subjects:
     | Voted more than 100 times |
     | Positive! Accepted more than 80 times |
     | Negative! Declined more than 80 times |
     | Game Changer has been in more than 1 party |
