from selenium.webdriver.firefox.options import Options as FirefoxOptions
from selenium.webdriver.firefox.service import Service
from os import path
from selenium import webdriver                        
from selenium.webdriver.common.by import By

# pip3 install selenium webdriver-manager
# download gecko driver - https://github.com/mozilla/geckodriver/releases
# https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/Keys.html

options = FirefoxOptions()

# headless mode
#options.add_argument("--headless")

# certificate errors
options.add_argument("--ignore-ssl-errors=yes")
options.add_argument('--ignore-certificate-errors')

# redirect
options.set_preference("network.http.redirection-limit", 4)

# user agent
options.set_preference("general.useragent.override", "Safari: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.3 (KHTML, like Gecko) Version/11.1 Safari/605.1.3")

# prevent creation of geckodriver.log
service = Service(log_path=path.devnull)
driver = webdriver.Firefox(options=options, service=service)

# 6 seconds timeout
driver.set_page_load_timeout(6)

# 10 seconds default wait for element to be clickable
driver.implicitly_wait(10)

url = "https://rhost"
driver.get(url)

driver.close()

