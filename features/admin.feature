Feature: This tests having an Admin add a book to the "New and Notable" section and check that is does not show up on the homepage, THIS TEST SHOULD FAIL
	@admin	
	Scenario: Log In as admin
		Given I navigate to "http://localhost:8080/bookstore/Login.jsp"
		And I fill in the log in info "admin" "admin"
		And I press "Login"
		And I click "Administration"
		And I click "Editorials"
		And I click "Insert"
		And I fill in the editorial items "This will explain it" "I don't know what this is" 
		And I select "New" from the "editorial_cat_id" dropdown
		And I select "Mastering ColdFusion 4.5" from the "item_id" dropdown
		And I press "Insert"
		And I navigate to "http://localhost:8080/bookstore/Default.jsp"
		Then I should not see "I don't know what this is"
		
		
