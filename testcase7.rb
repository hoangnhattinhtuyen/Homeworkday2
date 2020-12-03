require "selenium-webdriver"
require "webdrivers"

driver = Selenium::WebDriver.for :chrome
# go to form page
driver.navigate.to "https://itmscoaching.herokuapp.com/form"
# maximize browser
driver.manage.window.maximize
puts driver.manage.window.size
sleep 2
# Input first name
driver.find_element(id: 'first-name').send_keys('iTMS')
# Input last name
driver.find_element(id: 'last-name').send_keys('Coaching')
# Select job title
driver.find_element(id: 'job-title').send_keys('QA')
# Select Highest level of education
driver.find_element(id: 'radio-button-2').click
# Select Sex
driver.find_element(id: 'checkbox-1').click
# Select Year of experience
driver.find_element(css: 'option[value="2"]').click
# Input date
driver.find_element(id: 'datepicker').send_keys('10/27/2025')

driver.find_element(id: 'datepicker').send_keys :return
sleep 5
# Click Submit
driver.find_element(css: '.btn.btn-lg.btn-primary').click
# Close browser
driver.quit

