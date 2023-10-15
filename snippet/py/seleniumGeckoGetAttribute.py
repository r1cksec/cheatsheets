# get attribute
elems = driver.find_elements(By.XPATH, "//a[@href]")

for elem in elems:
    href = elem.get_attribute("href")

