Feature:
  As a user
  I want to see an overview of the trophies
  So that I can see which trophies there are and who earned them

  Scenario: Visiting the trophies page
    When I visit the trophies page
    Then I see a list of trophies
    And I see which politicians have earned them

  Scenario Outline: List of trophies for politicians
    Given a politician that <achievement>
    When I visit the trophies page
    Then I see a trophy listing "<achievement>"
    And I see that the politician earned it

    Examples:
      | achievement |
      | voted more than 60 times |
      | accepted more than 40 times |
      | declined more than 40 times |
      | has been in more than 1 parties |

  @wip
  Scenario Outline: List of trophies for parties
    Given a party that <achievement>
    When I visit the trophies page
    Then I see a trophy listing "<achievement>"
    And I see that the party earned it

    Examples:
      | achievement |
      | voted more than 160 times |
      #| Accepted more than 140 times |
      #| Declined more than 140 times |
