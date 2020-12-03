require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
# go to google page
driver.get 'http://google.com'
sleep 2
driver.quit