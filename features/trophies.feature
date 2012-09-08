Feature:
  As a user
  I want to see an overview of the trophies
  So that I can see which trophies there are and who earned them

  Scenario: Visiting the trophies page
    When I visit the trophies page
    Then I see a list of trophies
    And I see which politicians have earned them

  @wip
  Scenario Outline: List of trophies
    Given a politician that <achievement>
    When I visit the trophies page
    Then I see a trophy listing "<achievement>"
    And I see that the politician earned it

    Examples:
      | achievement |
      | Voted more than 60 times |
      | Accepted more than 30 times |
      | Declined more than 30 times |
      | has been in more than 1 party |
