#!/usr/local/bin/bash

declare -A scripts
dir="$PWD/scripts"


# Set a value:

declare input
for f in "$dir"/*; do
  filename=$(basename -- "$f")
  scripts["$filename"]+="  bash ${f}"
  input+="$filename\n"
done
for k in "${!scripts[@]}"
do
  echo "$k - ${scripts[$k]}";
done
printf "$input" | /usr/local/bin/dmenu-mac |  awk '{print "scripts/"$1}' | xargs bash
#   if grep -q "Exit"; then
#     echo "Exiting..."
#   else
#
#   fi
