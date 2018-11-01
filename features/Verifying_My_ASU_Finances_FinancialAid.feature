
Feature: Financial Aid and Scholarships Functionality Feature
  
  In order to ensure the Financial Aid and Scholarships section has been updated,
  I want to run the cucumber tests to verify the changes
  
  Background: Navigate to My Finances Page in My ASU
    Given user navigates into "webapp4-qa.asu.edu/myasu/" website
    And logs in using UserName as "username" and PassWord "password" 
    Then the login should be successful

    Scenario: Financial Aid and Scholarships Box Is Displayed
        When user clicks on the "Finances" in the navbar
        Then the "Financial Aid and Scholarships" section is displayed
    
    Scenario: Financial Aid and Scholarships Box Header is Updated
        When user clicks on the "Finances" in the navbar
        Then the "Financial Aid and Scholarships" box header should include "Financial Aid and Scholarships" and "Aid Year"
    
    Scenario:Financial Aid and Scholarships Box Header is Updated
        When user clicks on the "Finances" in the navbar
        Then the "Financial Aid and Scholarships" box header should include an aid year drop-down menu
  
    Scenario: My Financial Aid Tracker Update
        When user clicks on the "Finances" in the navbar
        Then the content inside the "Financial Aid and Schoarships" box should have a header that reads "Financial Aid Tracker"
        
    Scenario: My Financial Aid Tracker Update
       When user clicks on the "Finances" in the navbar
       Then the user should see a progress bar in the "Financial Aid and Scholarships" box

    Scenario: My Financial Aid Tracker Upate
        When user clicks on the "Finances" in the navbar
        Then 
       