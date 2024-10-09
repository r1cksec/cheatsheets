for pathToFile in "${dir}"/*
do
    if [ -f "${pathToFile}" ]
    then
        echo "${pathToFile}"
    fi
done

