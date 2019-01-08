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
  
  Scenario: Universal footer gray bar height
    Then The gray bar on the universal footer should have a height of 59 px

  Scenario: Universal footer background color
    Then The background color of the universal footer should be #E5E5E5

  Scenario: Universal footer font size
      Then the universal footer's font size should be 16 px

  Scenario: Universal footer font weight
        Then the universal footer's font weight should be 200

  Scenario: Universal footer gold bar height
    Then the gold bar on the universal footer should have a height of 56 px

  Scenario: Universal footer link color
    Then the link color in the universal footer should be #333333
