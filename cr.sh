#!/bin/bash

filename=$1.sh
folder="./scripts/"

while [[ -e "${folder}${filename}" ]] # -e File comparison for existing file
do
    echo -n "File already exist. Would you like to overwrite? (y/n) "
    read ANSWER
    case $ANSWER in
        y|Y|[yY][eE][sS])
            break
            ;;
        n|N|[nN][oO])
            read -p "Enter a new filename: " filename
            filename=$filename.sh
            ;;
    esac
done

echo "#!/bin/bash" > "${folder}${filename}"
chmod 754 "${folder}${filename}"
code "${folder}${filename}"