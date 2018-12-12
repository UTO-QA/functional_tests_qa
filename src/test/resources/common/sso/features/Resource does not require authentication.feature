Feature: Resource does not require authentication

Scenario: Authenticated or unauthenticated user makes request
	Given User makes a request to the resource "https://www.google.com/"
	Then Expected resource 200 is returned in the response
