while read -r line
do
    echo "${line}"
done < <(ls)

