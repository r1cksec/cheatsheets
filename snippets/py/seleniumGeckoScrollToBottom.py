from selenium.webdriver.common.action_chains import ActionChains

actions = ActionChains(driver)              
actions.send_keys(Keys.END).perform()

# or

driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")

