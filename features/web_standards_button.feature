
Feature: Validate various button types
  

  Scenario: ASU Recruitment related buttons
  When I navigate to "https://admission.asu.edu/"
  Then I validate the "Apply" button
  Then I validate the "Request info" button
  
Scenario Outline: ASU explore degree buttons
  When I navigate to "<url>"
  Then I verify the "Undergraduate" button
  Examples:
    |            url                      | 
    | https://wpcarey.asu.edu/            |
    | https://herbergerinstitute.asu.edu/ |
    | https://clas.asu.edu/               |

Scenario: Explore degree buttons
  When I navigate to "<url>"
  Then I verify the "Undergraduate" button
  Then I verify the "Undergraduate" button
  Then I verify that the buttons belong to the Explore pannel