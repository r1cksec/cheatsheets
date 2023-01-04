from lxml import etree

tree = etree.HTML(sourceCode)

# get element by id
objectId = tree.xpath('//*[@id="id"]')[0]

# get div by class
objectClass = tree.xpath('//div[@class="class"]')

# print spans inside div that belongs to class1 or class2
for o in objectClass:
    results = o.xpath('.//span[contains(@class, "class1") or contains(@class, "class2")]')
    print(result.text)

