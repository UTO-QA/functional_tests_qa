
Feature: Validate the ASU super footer

  Scenario Outline: Validate college info in super footer
    When I navigate to "<url>"
    Then I validate the college name and logo
    Then I verify the social media links
    Then I verify that contact us link should be present
    Examples:
      |           url              |
      | https://education.asu.edu/ |
      | https://law.asu.edu/       |
      | https://clas.asu.edu/      |
      | https://wpcarey.asu.edu/   |
    
      
    
