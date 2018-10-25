Feature: Verifying ASU Web Standard Headers
  
  Background: All ASU websites must have a header
    Given Navigate to a asu.edu website
    
  Scenario: White Background
    Then Verify the header has white backgrounnd
    
  Scenario: ASU Home in Global ASU links
    Given User clicks on "ASU Home" link
    Then Drop-down appears with following options "News/Events, Academics, Research, Atletics, Alumni, Giving, President, About ASU"
    
  Scenario: My Asu in global links
    Then Click on MyASu link
    Then User should be navigated to MyASU login page
    
  Scenario: Colleges and Schools in global links
    Then User clicks on "Colleges & Schools" link
    Then User should be navigate to Colleges and Schools home page
 
 Scenario: Maps and Locations in global links
   Then User clicks on "Maps & Location" link
   Then User should be navigated to the Maps page
   
 Scenario: Directory in global links
   Then User clicks on "Directory" link
   Then User should be navigated to the Directory page
   
    