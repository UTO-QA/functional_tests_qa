Feature: Resource requires authentication 

Scenario: User has valid authentication: first request
	Given Resource requires authentication
		And User has a valid authentication token
	When User makes a first request to the resource
	Then User is redirected to the same page without a token
		And Expected resource is returned in the response
		
Scenario: User has valid authentication: non-first request
	Given Resource requires authentication
		And User has a valid authentication token
	When User makes a non-first request to the resource
	Then Expected resource is returned in the response

Scenario: User has expired authentication token
	Given Resource requires authentication
		And User has an invalid authentication, an expired token
	When User makes a request to the resource
	Then User is redirected to the login URL

Scenario: User has unparseable authentication token
	Given Resource requires authentication
		And User has an invalid authentication, an unparseable token
	When User makes a request to the resource
	Then Server returns 4XX bad request response
#		Is below a possible action?
#		And User is redirected to the login page

Scenario: User has forged authentication token
	Given Resource requires authentication
		And User has an invalid authentication, an forged token
	When User makes a request to the resource
	Then Server returns 4XX forbidden status response
	
Scenario: User does not have authentication
	Given Resource requires authentication
		And User does not have authentication, new session
	When User makes a request to the resource
	Then User is redirected to login URL
