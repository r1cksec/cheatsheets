timeAndDate=$(date "+%F %T")
timeAndDate=$(echo ${timeAndDate} | sed 's/ /-T-/g')
timeAndDate=$(echo ${timeAndDate} | sed 's/:/-/g')

echo ${timeAndDate}

