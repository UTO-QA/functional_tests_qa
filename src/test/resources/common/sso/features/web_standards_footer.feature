Feature: Global Footer should be at the bottom of each web page and may not be altered
  
  Scenario Outline: All ASU websites must have a global footer
    Given  I navigate to "<url>"
    Then I validate the footer is displayed

    Examples:
      | url |
      |  www.asu.edu   |

  Scenario: Footer Global Links
    Then Verify the following options are listed in the footer "Copyright and Trademark, Accessibility, Privacy, Terms of Use, Jobs, Emergency, Contact ASU"
    
  Scenario: U.S. News & World Report Logo
    Then Verify the "2017 U.S. News & World Report" logo is displayed in the footer
    
  Scenario: U.S. for Innovation
    Then Verify the "ASU is #1 in the U.S. for Innovation" is displayed in the footer
  
  
