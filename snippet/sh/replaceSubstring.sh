# case sensitive
str1="Hello world world!"
str2="pizza"

# replace first occurence
result=${str1/world/${str2}}
echo ${result}

# replace all occurences
result=${str1//world/${str2}}
echo ${result}

