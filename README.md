# Example for Ruby, Python and Java for Selenium Automation Testing basics

rails g scaffold Posts title:string


Testing Selenium in Ruby

    gem 'webdrivers'
    gem "selenium-webdriver"
    gem "test-unit", "~> 3.6"
    gem 'cucumber-rails', require: false
    gem "capybara"

Create:     rails generate cucumber:install
                (Or)
            cucumber --init
Delete:    rails d cucumber:install    

Install chrome driver :
    sudo apt install chromium-chromedriver
    chromedriver --version

# RUN
    Ruby: ruby test/system/selenium_test.rb
    Rails: rails test test/system/Ruby/selenium_test.rb
    Rails: rails test  test/system/my_selenium_test.rb

# Python Installation
    pip install selenium
    pip install webdriver-manager

# RUN
    Python: python3 test/python_selenium_test.py

# Java Installation
TestNG: https://repo1.maven.org/maven2/org/testng/testng/7.9.0/
export CLASSPATH=".:selenium-server-standalone.jar:testng-6.8.7.jar"

wget https://github.com/SeleniumHQ/selenium/releases/download/selenium-4.1.0/selenium-server-4.1.2.jar

mv selenium-server-4.1.2.jar selenium-server.jar

sudo apt install xvfb

xvfb-run java -Dwebdriver.chrome.driver=/usr/bin/chromedriver -jar selenium-server.jar
which chromedriver

Install Chrome:
sudo curl -sS -o – https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
sudo bash -c "echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list.d/google-chrome.list"
sudo apt-get update
sudo apt-get install google-chrome-stable 
google-chrome --version
 

Download chrome Driver:
wget https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip
 
ls
 
unzip chromedriver_linux64.zip 
sudo mv chromedriver /usr/bin/chromedriver
sudo chown root:root /usr/bin/chromedriver
sudo chmod +x /usr/bin/chromedriver

javac -cp selenium-server.jar:. SeleniumJavaDemo.java
java -cp selenium-server.jar:. SeleniumJavaDemo




# for firefox Method-1: 
sudo tar -C /usr/local/bin/ -xvf geckodriver-v0.34.0-linux-aarch64.tar.gz 


# firefox for Method-2:
sudo snap remove firefox

sudo install -d -m 0755 /etc/apt/keyrings

wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | 
 sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla
 
 sudo apt update && sudo apt install firefox
 
 sudo apt install firefox-l10n-fr
 
 apt-cache search firefox-l10n
 
 sudo apt update 


 # Rspec Testing 
 1) add rspec-rails in Gemfile
 
 group :test do
  gem 'rspec-rails'
 end

 2) rails generate rspec:install
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb
3) rspec test/system/Ruby/RSpec/my_selenium_test.rb



# Cucumber is a tool for behavior-driven development (BDD)

1) Add these gem files
group :test do
  gem 'cucumber-rails', require: false
  gem 'selenium-webdriver'
end

2) rails generate cucumber:install
   identical  config/cucumber.yml
   identical  bin/cucumber
       chmod  bin/cucumber
       exist  features/step_definitions
   identical  features/step_definitions/.keep
       exist  features/support
    conflict  features/support/env.rb
Overwrite /home/anil/selenium/features/support/env.rb? (enter "h" for help) Y/n:  Y
       force  features/support/env.rb
       exist  lib/tasks
   identical  lib/tasks/cucumber.rake

3) my_feature.feature in feature folder
# features/google_search.feature
Feature: Google Search
  Scenario: Open Google Homepage
    Given I am on the Google homepage
    Then the page title should be "Google"

4) features/step_definitions/google_search.feature.rb

### features/step_definitions/google_search_steps.rb

require 'selenium-webdriver'

Given("I am on the Google homepage") do
  @driver = Selenium::WebDriver.for :chrome
  @driver.navigate.to 'https://www.google.com'
end

Then("the page title should be {string}") do |expected_title|
  actual_title = @driver.title
  expect(actual_title).to eq(expected_title)
  @driver.quit
end

5) This is optional: - Update features/support/env.rb file 

require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.default_driver = :selenium

6) Run single feature file

cucumber features/google_search.feature


7)  Run All test cases

cucumber 




