Feature: This tests that when the guest user adds an item with a quantity of 0, it is not added to the shopping cart, THIS TEST SHOULD FAIL
	@addZero	
	Scenario: Log In as guest, add a book to the shopping cart with a quantity of 0
		Given I navigate to "http://localhost:8080/bookstore/Login.jsp"
		And I fill in the log in info "guest" "guest"
		And I press "Login"
		And I click "Home"
		And I click "Web Database Development : Step by Step"
		And I fill in the "quantity" field with "0"
		And I click "Add to Shopping Cart"
		Then I should not see "Web Database Development : Step by Step"
