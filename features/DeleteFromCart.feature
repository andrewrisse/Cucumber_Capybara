Feature: This tests adding items into the shopping cart
	@deleteFromCart	
	Scenario: Register, Log In, Add 2 known books to cart
		Given I navigate to "http://localhost:8080/bookstore/Registration.jsp"
		And I fill in the required items "boborisse" "password" "password" "Bobo" "Risse" "boborisse@gmail.com"
		And I press "Register"
		Then I should be on the "http://localhost:8080/bookstore/Default.jsp" page
		Given I navigate to "http://localhost:8080/bookstore/Login.jsp"
		And I fill in the log in info "boborisse" "password"
		And I press "Login"
		Then I should be on the "http://localhost:8080/bookstore/ShoppingCart.jsp" page
		Given I navigate to "http://localhost:8080/bookstore/BookDetail.jsp?item_id=1&"
		And I press "Add to Shopping Cart"
		And I navigate to "http://localhost:8080/bookstore/ShoppingCartRecord.jsp?order_id=3&"
		And I press "Delete"
		And I accept
		Then I should not see "Web Database Development : Step by Step"
		
