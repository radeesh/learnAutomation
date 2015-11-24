Given(/^I am on Checkbox page$/) do
  @browser.goto("#{@url}/checkbox")
end

Then(/^I select following toppings$/) do |toppings|
	toppings.raw.each do |topping|
		@browser.checkbox(:value => topping[0]).set
	end
end