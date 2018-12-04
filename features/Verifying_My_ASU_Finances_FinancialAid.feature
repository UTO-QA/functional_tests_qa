
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
      
    Scenario: View Steps of Financial Aid Tracker
        Given the user is logged in
        And on the finances page
        When the user clicks on the View Steps drawer in the Financial Aid Tracker section
        Then the six financial aid steps are displayed 
  
    Scenario: Click the Submit FAFSA Button
        Given the user is logged
        And on the finances page
        When the user clicks the Submit FAFSA button in the Financial Aid section
        Then the page is directed to https://students.asu.edu/financialaid/apply 
        
    Scenario: View SAP Status
        Given the user is logged in
        And on the finances page
        When the user clicks on the status drawer 
        Then the SAP status of the current term and previous terms should display

       