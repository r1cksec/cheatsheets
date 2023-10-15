string = "String"

for index in range(0, len(string)):
    if (string[index] == 'A' or string[index] == 'B'):
        # do nothing
        pass
    else:
        print("String contains other chars")
        exit()

