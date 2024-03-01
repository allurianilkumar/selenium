# features/step_definitions/google_search_steps.rb
require 'selenium-webdriver'

Given("I am on the Google homepage") do
  @driver = Selenium::WebDriver.for :chrome
  @driver.navigate.to 'https://www.google.com'
end
# {int} for integer
# {float} for float
# 
Then("the page title should be {string}") do |expected_title|
  actual_title = @driver.title
  expect(actual_title).to eq(expected_title)
  @driver.quit
end
