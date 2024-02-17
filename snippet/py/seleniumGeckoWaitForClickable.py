from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# click by getting element by id
WebDriverWait(driver,5).until(EC.element_to_be_clickable((By.ID, "id"))).click()

