Feature: Resource wants to authenticate themselves

Scenario: User wants to login
  Given User makes a request to the resource "https://webapp4.asu.edu/myasu"
  Then Redirected url must point to "https://weblogin.asu.edu/cas/login?service=https%3A%2F%2Fweblogin.asu.edu%2Fcgi-bin%2Fcas-login%3Fcallapp%3Dhttps%253A%252F%252Fwebapp4.asu.edu%252Fmyasu%252F%253Finit%253Dfalse"
