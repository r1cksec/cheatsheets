# alpha numeric random string with length 5
head /dev/urandom | tr -dc A-Za-z0-9 | head -c 5 ; echo ''

