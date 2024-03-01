# Selenium with ActiveSupport::TestCase
# rails test test/system/Ruby/my_selenium_test.rb
require 'selenium-webdriver'


class MySeleniumTest < ActiveSupport::TestCase
  setup do
    @driver = Selenium::WebDriver.for :chrome
    # @driver = Selenium::WebDriver.for :firefox
    # @driver = Selenium::WebDriver.for :headless_chrome
  end

  teardown do
    @driver.quit
  end

  test 'should visit home page' do
    # @driver.get('http://localhost:3000')
    @driver.navigate.to "https://www.google.com/"

    # element = @driver.find_element(:id, 'some_element_id')
    # element.click
    puts @driver.title
    assert_equal 'Google', @driver.title
  end
end
