Feature: Global Footer should be at the bottom of each web page and may not be altered
  
  Background:All ASU websites must have a global footer
    Given Navigate to an asu.edu website

  Scenario: Footer Global Links
    Then Verify the following options are listed in the footer "Copyright and Trademark, Accessibility, Privacy, Terms of Use, Jobs, Emergency, Contact ASU"
    
  Scenario: U.S. News & World Report Logo
    Then Verify the "2017 U.S. News & World Report" logo is displayed in the footer
    
  Scenario: U.S. for Innovation
    Then Verify the "ASU is #1 in the U.S. for Innovation" is displayed in the footer
  
  