Feature: This tests registering and logging in 
	@register		
	Scenario: Register 
		Given I navigate to "http://localhost:8080/bookstore/Registration.jsp"
		And I fill in the required items "andrewrisse" "password" "password" "Andrew" "Risse" "risse@usc.edu"
		And I press "Register"
		Then I should be on the "http://localhost:8080/bookstore/Default.jsp" page
		And I click "Sign In"	
		And I fill in the log in info "andrewrisse" "password"
		And I press "Login"
		Then I should be on the "http://localhost:8080/bookstore/ShoppingCart.jsp" page

	

	


		
		
		
