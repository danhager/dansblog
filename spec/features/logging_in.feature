Feature: Logging in

  As a user
  I want to be able to log in
  So I can access the application

  Scenario: A user tries to log in with valid credentials

    Given I am not logged in
    When I go to the login page
    And I fill in a valid email and password
    Then I should be taken to the posts index page
    And I should be logged in with the email I provided
