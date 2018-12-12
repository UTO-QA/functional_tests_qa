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

    Scenario: View Quick Links side panel in Home page
        When the user hovers above Quick Links side panel
        Then the following box should display: My Gmail, My Calendar, Google Drive, OneDrive, My Files (AFS), My Apps, My Sites, Clubs and Orgs, Library, My Bookmarks, Canvas

    Scenario: View My Classes box in Home page
        When the user is on Home page
        Then the My Classes box should display

    Scenario: View Calendar box in Home page
        When the user is on Home page
        Then the Calendar box should display

    Scenario: View Feeds box in Home page
        When the user is on Home page
        Then the Feeds box should display

    Scenario: View Priority Tasks box in Home page
        When the user is on Home page
        Then the Priority Tasks box should display

    Scenario: View My Programs box in Home page
        When the user is on Home page
        Then the My Programs box should display

    Scenario: View Academic Support Team box in Home page
        When the user is on Home page
        Then the Academic Support Team box should display

    Scenario: View Banner box in Home page
        When the user is on Home page
        Then the Banner box should display

