Feature: Manage deals

  @javascript
  Scenario:Create an account
    Given I am currently on the "deals" page
    And I follow "Create a Deal"
    Then I should see "Sign in"
    And I follow "Sign up"
    And I fill in "Username" with "Prasiddha"
    And I fill in "Password" with "123456"
    And I fill in "Fullname" with "Prasiddha Joshi"
    And I fill in "Phonenumber" with "9809878909"
    And I fill in "Email" with "prasiddha.joshi@sprout.com"
    And I fill in "Password confirmation" with "123456"
    And I check "person_notify"
    Then I press "Sign up"
    Then I should see "Create a deal"

    Scenario:create a deal
    Given I go to "Sign in" page
    And I fill in "email" with "prasiddha.joshi@sprout.com"
    And I fill in "Password" with "123456"
    And I press "Sign in"
    And sleep for 5 seconds
    Then I should see "You have successfully signed in"

