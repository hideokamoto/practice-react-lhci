#!/bin/sh -e
FILES=$(ls ./.lighthouseci)
for txt in $FILES; do
  file=$("$FILES/$txt")
  echo $file
  if [ -e $file ]; then
    npm run moxci "$FILES/$txt"
  else
    echo "$file NOT found."
  fi
done