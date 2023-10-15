str="Hello world"

if [[ ${str} =~ He??o* ]]
then
    echo "Match Hello"
else
    echo "No match"
fi

