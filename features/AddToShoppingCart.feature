Feature: This tests adding items into the shopping cart
	@addToShoppingCart
	Scenario: Register, Log In, Add 2 known books to cart
		Given I navigate to "http://localhost:8080/bookstore/Registration.jsp"
		And I fill in the required items "brandirisse" "password" "password" "Brandi" "Risse" "brandirisse@gmail.com"
		And I press "Register"
		Then I should be on the "http://localhost:8080/bookstore/Default.jsp" page
		Given I navigate to "http://localhost:8080/bookstore/Login.jsp"
		And I fill in the log in info "brandirisse" "password"
		And I press "Login"
		Then I should be on the "http://localhost:8080/bookstore/ShoppingCart.jsp" page
		Given I navigate to "http://localhost:8080/bookstore/BookDetail.jsp?item_id=1&"
		And I press "Add to Shopping Cart"
		And I navigate to "http://localhost:8080/bookstore/BookDetail.jsp?item_id=6&"
		And I press "Add to Shopping Cart"
		And I navigate to "http://localhost:8080/bookstore/ShoppingCart.jsp"
		Then I should see "Web Database Development : Step by Step"
		Then I should see "MySQL & PHP From Scratch"
		Then I should see "63.98000144958496"
