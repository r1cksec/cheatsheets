for i in {1..5}
do
    echo "${i}"
done

# using variable
var=5

for x in $(seq 1 ${var})
do
    echo "${x}"
done

