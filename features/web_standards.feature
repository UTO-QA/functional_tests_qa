
Feature: Verifying ASU Web Standar Headers
  <Some interesting description here>
  Background: Going to asu
    Given Navigate to asu website
  Scenario: White Background
    Then Verify the header has white backgrounnd
    
  Scenario: ASU Home in Global ASU links
    Given User clicks on ASU Home link
    Then Drop-down appears with following options "News/Events, Academics, Research, Atletics, Alumni, Giving, President, About ASU"
    
    