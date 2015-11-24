Given(/^I am on Options page$/) do
  @browser.goto("#{@url}/option")
end

Then(/^I choose "(.*?)" vehicle$/) do |vehicle|
  @browser.radio(:value => vehicle).set
end