
Feature: Students should be able to view their financial aid information in MyASU
  
  Background: 
    Given the user is a student
    And has access to MyASU

    Scenario: View Finances page in MyASU
      Given the user is logged in
      When the user clicks on Finances in the navigation bar
      Then the finances page should display
    
    Scenario: User should be able to select a Financial Aid award year to view
      Given the user is logged in
      And on the finances page
      When the user clicks the Aid Year drawer in the header box of the Financial Aid section
      Then a drop-down menu should appear listing the active financial aid award years  
      

    
    
    
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
       