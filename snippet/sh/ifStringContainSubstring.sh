str1="some string here"
str2="string"

# if str1 contains str2 substring
if [[ ${str1} == *"${str2}"* ]]
then
    echo "${str1} contains ${str2}"
fi

