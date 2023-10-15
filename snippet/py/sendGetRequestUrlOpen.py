from urllib.request import urlopen

url = "https://url"

try:
    content = urlopen(url)
    urlContent = content.read()
    # to write content into file use "wb"
    print(urlContent)

except:
    print("Error!")
    exit (1)

