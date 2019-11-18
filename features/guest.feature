Feature: This tests that guest user cannot access the admin menu
	@guest	
	Scenario: Log In as guest
		Given I navigate to "http://localhost:8080/bookstore/Login.jsp"
		And I fill in the log in info "guest" "guest"
		And I press "Login"
		And I click "Administration"	
		Then I should see "Enter login and password"
