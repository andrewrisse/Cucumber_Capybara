Given(/^I navigate to "([^"]*)"$/) do |page|
	visit(page)
end

And(/^I visit the "([^"]*)" page$/) do |page|
	visit(page)
end

And(/^I fill in the editorial items "([^"]*)" "([^"]*)"$/) do |article_desc, article_title|
	fill_in "article_desc", :with => article_desc
	fill_in "article_title", :with => article_title
	
end

And(/^I fill in the required items "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |member_login, member_password, member_password2, first_name, last_name, email|
	fill_in "member_login", :with => member_login
	fill_in "member_password", :with => member_password
	fill_in "member_password2", :with => member_password2
	fill_in "first_name", :with => first_name
	fill_in "last_name", :with => last_name
	fill_in "email", :with => email
end

And(/^I fill in the "([^"]*)" field with "([^"]*)"$/) do |field, input|
	fill_in field, :with => input
	
end

And(/^I select "([^"]*)" from the "([^"]*)" dropdown$/) do |option, select_box|
	select option, from: select_box
end

And(/^I click on "([^"]*)"$/) do |link|
	click_link button
end

And(/^I click "([^"]*)"$/) do |link_text|
	click_on link_text
end
	
And(/^I press "([^"]*)"$/) do |button|
	click_button button
end

And(/^I accept$/) do 
	page.driver.browser.switch_to.alert.accept
	
end


And(/^I fill in the log in info "([^"]*)" "([^"]*)"$/) do |username, password|
	fill_in "Login", :with => username
	fill_in "Password", :with => password
end



Then (/^I should be on the "([^"]*)" page$/) do |page_name|
	assert page.current_url == page_name
end


Then (/^I should see "([^"]*)"$/) do |text|
	assert page.has_content?(text)
end



Then (/^I should not see "([^"]*)"$/) do |text|
	assert page.has_no_content?(text)
end





