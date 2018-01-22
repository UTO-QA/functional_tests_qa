Feature: Resource does not require authentication

Scenario: Authenticated or unauthenticated user makes request
	Given Resource does not require authentication to "https://www.asu.edu"
	When User makes a request to the resource
	Then Expected resource is returned in the response
