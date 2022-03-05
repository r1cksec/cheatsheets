# for more infos: http://allselenium.info/python-selenium-commands-cheat-sheet-frequently-used/
# download chrome driver - https://sites.google.com/a/chromium.org/chromedriver/downloads

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options
import time

# initiate browser
options = webdriver.ChromeOptions()
options.add_argument('--headless')
chromeDriver = "/path/to/chromedriver"
driver = webdriver.Chrome(options = options, executable_path=chromeDriver)

# get url
browser.get("https://rhost")

textField = browser.find_element_by_id("id")
textField.send_keys("text")
time.sleep(1)
textField.send_keys(Keys.RETURN)
time.sleep(1)
browser.find_element_by_id("id").click()

# read inner html
result = browser.find_element_by_id("id")
innerHtml = result.get_attribute('innerHTML')

# save content to file
with open('file.txt', 'w') as f:
    f.write(browser.page_source)

browser.close()

