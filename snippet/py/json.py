import json

# read json file
with open(pathToFile, "r", encoding="utf-8") as file:
    objectJson = json.load(file)

# write json file
jsonOject = {
    "key1": val1,
    "key2": val2
}

with open(pathToFile, "w+", encoding="utf-8") as file:
    json.dump(jsonOject, file)

