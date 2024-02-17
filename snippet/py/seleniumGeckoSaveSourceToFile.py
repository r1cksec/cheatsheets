sourceCode = driver.page_source

with open("/path/file", "w", encoding="utf-8") as file:
    file.write(sourceCode)

