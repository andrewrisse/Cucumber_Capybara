require 'capybara/cucumber'
require 'selenium/webdriver'
require 'test/unit/assertions'

results = File.new("results.txt","w")

Capybara.configure do |config|
	config.run_server = true
	config.default_driver = :selenium
	config.app_host = "localhost:8080"
end

After('@register') do |scenario|
	if scenario.passed?
		results = File.open("results.txt", "a")	    
  		results.puts "register: PASS"   
		results.close
	else
		results = File.open("results.txt", "a")	    
  		results.puts "register: FAIL"   
		results.close
	end
end

After('@addToShoppingCart') do |scenario|
	if scenario.passed?
		results = File.open("results.txt", "a")	    
  		results.puts "addToShoppingCart: PASS"   
		results.close
	else
		results = File.open("results.txt", "a")	    
  		results.puts "addToShoppingCart: FAIL"   
		results.close
	end
end
After('@admin') do |scenario|
	if scenario.passed?
		results = File.open("results.txt", "a")	    
  		results.puts "admin: PASS"   
		results.close
	else
		results = File.open("results.txt", "a")	    
  		results.puts "admin: FAIL"   
		results.close
	end
end
After('@guest') do |scenario|
	if scenario.passed?
		results = File.open("results.txt", "a")	    
  		results.puts "guest: PASS"   
		results.close
	else
		results = File.open("results.txt", "a")	    
  		results.puts "guest: FAIL"   
		results.close
	end
end
After('@addZero') do |scenario|
	if scenario.passed?
		results = File.open("results.txt", "a")	    
  		results.puts "addZero: PASS"   
		results.close
	else
		results = File.open("results.txt", "a")	    
  		results.puts "addZero: FAIL"   
		results.close
	end
end
After('@deleteFromCart') do |scenario|
	if scenario.passed?
		results = File.open("results.txt", "a")	    
  		results.puts "deleteFromCart: PASS"   
		results.close
	else
		results = File.open("results.txt", "a")	    
  		results.puts "deleteFromCart: FAIL"   
		results.close
	end
end



World(Test::Unit::Assertions)
