#!/bin/sh -e
FILES=$(ls ../.lighthouseci)
echo $FILES
echo '\n'
for file in $FILES; do
  echo 'uploads'
  echo $file
  echo '\n'
  npm run moxci "$file"
done