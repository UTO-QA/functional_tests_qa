Feature: I want to visit key pages on MyASU so that I can successfully navigate around it
  
  Background: 
    Given the user is a student
    And has access to MyASU
    And has logged in

    Scenario: View Home page in MyASU
        When the user clicks on Home page in the navigation bar
        Then the Home page should display

    Scenario: View Finance page in MyASU
        When the user clicks on Finances in the navigation bar
        Then the Finance page should display

    Scenario: View Service Center page in MyASU
        When the user clicks on Service Center page in the navigation bar
        Then the Service Center page should display

    Scenario: View Profile page in MyASU
        When the user clicks on Profile page in the navigation bar
        Then the Profile page should display

