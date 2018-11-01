
Feature: Financial Aid and Scholarships Functionality Feature
  
  In order to ensure the Financial Aid and Scholarships section has been updated,
  I want to run the cucumber tests to verify the changes
  
  Background: Navigate to My Finances Page in My ASU
    Given user navigates into "webapp4-qa.asu.edu/myasu/" website
    And logs in using UserName as <username> and PassWord <password> 
    Then the login should be successful

    Scenario: Financial Aid and Scholarships Box Is Displayed
        When user clicks on the "Finances" in the navbar
        Then the "Financial Aid and Scholarships" section is displayed
    
    Scenario: Financial Aid and Scholarships Box Header is Updated
        When user clicks on the "Finances" in the navbar
        Then the "Financial Aid and Scholarships" box header should include "Financial Aid and Scholarships" and "Aid Year"
    
    Scenario:Financial Aid and Scholarships Box Header is Updated
        When user clicks on the "Finances" in the navbar
        Then the "Financial Aid and Scholarships" box header should include an aid year drop-down
  