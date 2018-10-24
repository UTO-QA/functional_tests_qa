Feature: Verifying ASU Web Standard Headers
  
  Background: All ASU websites must have a header
    Given Navigate to a asu.edu website
    
  Scenario: White Background
    Then Verify the header has white backgrounnd
    
  Scenario: ASU Home in Global ASU links
    Given User clicks on ASU Home link
    Then Drop-down appears with following options "News/Events, Academics, Research, Atletics, Alumni, Giving, President, About ASU"
    
    