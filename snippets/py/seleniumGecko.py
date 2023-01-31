from selenium import webdriver                        
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.firefox.options import Options as FirefoxOptions
import time
from selenium.webdriver.firefox.service import Service
from os import path

# pip3 install selenium webdriver-manager
# download gecko driver - https://github.com/mozilla/geckodriver/releases
# https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/Keys.html

# options = FirefoxOptions()
# options.add_argument("--headless")
# options.add_argument("--ignore-ssl-errors=yes")
# options.add_argument('--ignore-certificate-errors')
# options.set_preference("network.http.redirection-limit", 4)
# options.set_preference("general.useragent.override", "Safari: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.3 (KHTML, like Gecko) Version/11.1 Safari/605.1.3")
# prevent creation of geckodriver.log
# service = Service(log_path=path.devnull)
# driver = webdriver.Firefox(options=options, service=service)
# 6 seconds timeout
# driver.set_page_load_timeout(6)

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

# get element by string search
obj = driver.find_elements(By.XPATH, "//*[contains(text(), 'searchThisString')]")

# get inner html of element
elements = driver.find_elements(By.CLASS_NAME, "classname")

for e in elements:
    e.get_attribute("innerHTML")

# get attribute
elems = driver.find_elements(By.XPATH, "//a[@href]")

for elem in elems:
    href = elem.get_attribute("href")

# send global keydown arrow
actions = ActionChains(driver)
actions.send_keys(Keys.ARROW_DOWN).perform()

# download png file
driver.get("https://rhost/file.png")
driver.save_screenshot("/tmp/result.png")

driver.close()

