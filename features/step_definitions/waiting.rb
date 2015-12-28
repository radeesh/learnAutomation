Given(/^I am on waiting page$/) do
  @browser.goto("#{@url}/waiting")
end

Then(/^I wait for page to load$/) do
  @browser.div(:class => "spinner overlay").wait_while_present
end

And(/^I enter name$/) do
	@browser.text_field(:id, "name_text").set 'Joe'	
end

And(/^I enter email$/)do
	@browser.text_field(:id, "email_text").set 'joe@bigtech.com'
end