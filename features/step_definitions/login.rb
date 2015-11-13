Given(/^I am on Login page$/) do
  @browser.goto("localhost:3000/login")
end

When(/^I sign in as a valid user$/) do
	@browser.text_field(:id, "username").set 'user@example.com'
	@browser.text_field(:id, "password").set 'password'
	@browser.button(:value, "Log In").click
end

Then(/^I should see the home page$/) do
	@browser.form(:id, "test-checkbox").wait_until_present
	expect(@browser.text).to include 'Checkbox'
end