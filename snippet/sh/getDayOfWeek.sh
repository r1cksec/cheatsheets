dayOfWeek=$(date +%u)

if [ ${dayOfWeek} -eq 1 ]
then
    day="Monday"
elif [ ${dayOfWeek} -eq 2 ]
then
    day="Tuesday"
elif [ ${dayOfWeek} -eq 3 ]
then
    day="Wednesday"
elif [ ${dayOfWeek} -eq 4 ]
then
    day="Thursday"
elif [ ${dayOfWeek} -eq 5 ]
then
    day="Friday"
elif [ ${dayOfWeek} -eq 6 ]
then
    day="Saturday"
elif [ ${dayOfWeek} -eq 7 ]
then
    day="Sunday"
fi

echo ${day}

