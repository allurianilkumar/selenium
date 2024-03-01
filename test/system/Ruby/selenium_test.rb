# Ruby: ruby test/system/selenium_test.rb
# Rails: rails test test/system/Ruby/selenium_test.rb
require 'selenium-webdriver'

# for chrome web browser
driver = Selenium::WebDriver.for :chrome
# for firefox web brower
# driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.google.com/"
driver.close

