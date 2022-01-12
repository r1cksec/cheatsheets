import os
import json

def deleteJson(pathToFile):
    os.remove(pathToFile)

def loadJson(pathToFile):
    with open(pathToFile, "r", encoding="utf-8") as file:
        return json.load(file)

def writeJson(pathToFile, val1, val2):
 
    jsonInfo = {
        "key1": val1,
        "key2": val2
    }

    with open(pathToFile, "w+", encoding="utf-8") as file:
        json.dump(jsonInfo, file)

