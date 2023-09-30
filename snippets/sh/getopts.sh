# default value
value="SomeString"

while getopts "i:o:v:" opt
do
    case $opt in
        i)
            input="$OPTARG"
            ;;
        o)
            output="$OPTARG"
            ;;
        v)
            value="$OPTARG"
            ;;
        \?)
            echo "$OPTARG" >&2
            echo "Usage: $0 -i <input> -o <output> [-v <value>]"
            exit 1
            ;;
        :)
            echo "$OPTARG" >&2
            echo "Usage: $0 -i <input> -o <output> [-v <value>]"
            exit 1
            ;;
    esac
done

# check required arguments
if [ -z "$input" ] || [ -z "$output" ];
then
    echo "Usage: $0 -i <input> -o <output> [-v <value>]"
    exit 1
fi

echo "${input}"
echo "${output}"
echo "${value}"

