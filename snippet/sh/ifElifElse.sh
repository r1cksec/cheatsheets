res=$(echo str2)

# case sensitive
if [[ "${res}" == *"str1"* ]]
then
    echo "case 1"
elif [[ "${res}" == *"str2"* ]]
then
    echo "case 2"
else
    echo "case 3"
fi

