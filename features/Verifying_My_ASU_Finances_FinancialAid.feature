
Feature: Students should be able to view their financial information in MyASU to keep track
  of their student accounts
  
  Background: 
    Given the user has access to MyASU
    When the user logs in
    And clicks on Finances in the navigation bar
    Then the finances page should display

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
       