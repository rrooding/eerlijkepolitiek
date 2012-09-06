Feature:
  As a user
  I want to authenticate using a social network
  so that I don't need to remember credentials

  @wip
  Scenario: Create an account
    Given I have a twitter account
    When I choose my social network as login
    Then I get to see my name
    And I am authenticated

  #Scenario: Log in and log out
    #Given I have a social media account
    #And I am authenticated with that account
    #When I click logout
    #Then I am no longer authenticated
