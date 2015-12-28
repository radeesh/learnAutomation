 Feature: Verify Waiting
	This feature will verify scenarios
	on how to wait for the page to load

 Scenario: Wait tests
  Given I am on waiting page
  And I wait for page to load
  Then I enter name
  And I enter email