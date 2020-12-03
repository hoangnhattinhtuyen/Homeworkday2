require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
# go to google page
driver.get 'http://google.com'

# maximize browser
driver.manage.window.maximize
puts driver.manage.window.size
sleep 2
# find to element of search field
element = driver.find_element(name: 'q')
# Click on search field
element.click
# Input text: "iTMS Coaching"
element.send_keys "iTMS Coaching"
# Click enter
element.submit

sleep 2
puts driver.title
driver.quit
