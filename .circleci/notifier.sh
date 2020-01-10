#!/bin/sh -e
FILES=$(ls ./.lighthouseci)
echo $FILES
for txt in $FILES; do
  file=$("$FILES/$txt")
  echo 'uploads'
  echo $file
  npm run moxci "$FILES/$txt"
done