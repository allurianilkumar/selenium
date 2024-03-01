# Chrome
# from selenium import webdriver
# chrome_options = webdriver.ChromeOptions()
# #chrome_options.add_argument('--headless')
# chrome_options.add_argument('--disable-gpu')  # Only included in Linux version
# chrome_options.add_argument('--no-sandbox')  # Only included in Linux version
# driver = webdriver.Chrome(options=chrome_options)
# driver.get('https://www.google.com/')
# print(driver.page_source)
# driver.quit()

# Firefox
from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from webdriver_manager.firefox import GeckoDriverManager

driver = webdriver.Firefox(service=Service(GeckoDriverManager().install()))
driver.get("https://www.google.com")
driver.quit()