from selenium.webdriver.common.keys import Keys

# send keystrokes by getting element by id
textField = driver.find_element(By.ID, "id")
textField.send_keys("str")
textField.send_keys(Keys.RETURN)

