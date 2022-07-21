from selenium import webdriver                        
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.keys import Keys

# pip3 install selenium webdriver-manager
# download chrome driver - https://sites.google.com/chromium.org/driver/downloads

driverPath = Service("/path/chromedriver")
driver = webdriver.Chrome(service = driverPath)

# headless
#options = webdriver.ChromeOptions()
#options.add_argument("headless")
#driver = webdriver.Chrome(service = driverPath, options = options)

url = "https://rhost"
driver.get(url)

# send keystrokes by getting element by id
textField = driver.find_element_by_id("id")
textField.send_keys("text")
time.sleep(1)
textField.send_keys(Keys.RETURN)
time.sleep(1)
driver.find_element_by_id("id").click()

# read inner html
element = driver.find_element_by_id("id")
innerHtml = element.get_attribute("innerHTML")

# scroll to bottom
driver.execute_script("window.scrollTo(0,document.body.scrollHeight)")

# get attribute of element by class
elements = driver.find_elements_by_class_name("class")
for e in elements:
    print(e.get_attribute("href"))

# get all elements by tag
elements = driver.find_elements_by_xpath("//a[@href]")
for e in elements:
    print(e.get_attribute("href"))

# write content to file
with open('file.txt', 'w') as f:
    f.write(driver.page_source)

driver.close()

