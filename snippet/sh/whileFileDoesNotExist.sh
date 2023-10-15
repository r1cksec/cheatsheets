while [ ! -f  file.txt ]
do
    echo "File does not exist!"
    sleep 1
done

echo "File exists!"

