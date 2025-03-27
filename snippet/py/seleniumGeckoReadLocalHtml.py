filePath = "<pathToFile>.html"

with open(filePath, "r", encoding="utf-8") as file:
    htmlContent = file.read()

url = f"data:text/html;charset=utf-8,{htmlContent}"

driver.get(url)

