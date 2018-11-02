Feature: Verifying ASU Web Standard Headers
  
  Background: All ASU websites must have a header
    Given Navigate to an asu.edu website
    
  Scenario: White Background
    Then Verify the header has white backgrounnd
    
  Scenario: ASU Home in Global ASU links
    Then User clicks on "ASU Home" link
    Then Drop-down appears with following options "News/Events, Academics, Research, Atletics, Alumni, Giving, President, About ASU"
    
  Scenario: My ASU in global links
    Then Click on "MyASu" link
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
 
 Scenario: ASU Global Search
   Then I enter "keyword" to search
   Then The user should see a list of results for the keyword
   
 Scenario: ASU Logo
   Then I verify the asu logo is placed at Top 
   
 Scenario: ASU Logo redirection
   Then I navigate to "https://admission.asu.edu/"
   Then I click on ASU logo
   Then I should be redirected to "https://www.asu.edu/"

   
   
    