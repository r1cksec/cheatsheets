from selenium import webdriver                        
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
import time

# pip3 install selenium webdriver-manager
# download gecko driver - https://github.com/mozilla/geckodriver/releases
# https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/Keys.html

driver = webdriver.Firefox()

url = "https://rhost"
driver.get(url)

# click by getting element by id
WebDriverWait(driver,5).until(EC.element_to_be_clickable((By.ID, "id"))).click()

# send keystrokes by getting element by id
textField = driver.find_element(By.ID, "id")
textField.send_keys("str")
textField.send_keys(Keys.RETURN)

# get element by xpath
div = driver.find_elements(By.XPATH, './/div[@class = "className"]')

# click by getting element by class
WebDriverWait(driver,3).until(EC.element_to_be_clickable((By.CLASS_NAME, "className"))).click()

# send global keydown arrow
actions = ActionChains(driver)
actions.send_keys(Keys.ARROW_DOWN).perform()

driver.close()

