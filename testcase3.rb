require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
# go to google page
driver.get 'http://google.com'

# maximize browser
driver.manage.window.maximize
puts driver.manage.window.size
sleep 2

# get title
puts driver.title
driver.quit