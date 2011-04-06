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

@javascript
    Scenario:create a deal
    Given I am authenticated
    Then I should see "Signed in successfully."
    And I follow "Create a Deal"
    And I fill in "Title" with "ABC"
    And I fill in "Description" with "Cdfdf"
    And I select "Year" as "2012"
    And I fill in "Unit" with "2"
    And I fill in "Actual price" with "4"
    And I fill in "Discounted price" with "2"
    And I fill in "Image url" with "http:\\www.google.com"
    And I press "Create Deal"
    Then I should see "Congratulations! Your deal has been created"




