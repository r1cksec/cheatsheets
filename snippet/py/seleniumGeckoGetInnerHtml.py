# get inner html of element
elements = driver.find_elements(By.CLASS_NAME, "classname")

for e in elements:
    e.get_attribute("innerHTML")

