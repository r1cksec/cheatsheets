arr1 = ["1", "2", "3"]
arr2 = ["4", "5", "6"]

# pairwise linear
for val1, val2 in zip(arr1, arr2):
    print(str(val1) + " " + str(val2))

# using index
counter = 0

for val in arr1:
    print(val)
    print(arr2[counter])
    counter = counter + 1

