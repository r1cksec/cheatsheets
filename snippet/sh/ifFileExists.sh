fileName="path/to/file"

if [ ! -f ${fileName} ]
then
    echo "Does not exist"
    
else
    echo "File exists"
fi

