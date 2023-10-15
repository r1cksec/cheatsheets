# loop 5 times
i=0

while [ $i -lt 5 ]
do
    echo "${i}"
    i=`expr $i + 1`
done

# alternatively
let i=${i}+1
echo ${i}

