# spec/system/Ruby/RSpec/my_selenium_spec.rb
# rspec test/system/Ruby/RSpec/my_selenium_test.rb
require 'rails_helper'
require 'selenium-webdriver'

RSpec.describe 'My Selenium Tests', type: :system do
  before(:all) do
    @driver = Selenium::WebDriver.for :chrome
  end

  after(:all) do
    @driver.quit
  end

  it 'should visit home page' do
    @driver.get('https://google.com')

    # Perform Selenium actions here
    # Example:
    # element = @driver.find_element(:id, 'some_element_id')
    # element.click

    expect(@driver.title).to eq 'Google'
  end
end
