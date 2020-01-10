#!/bin/sh -e
FILES=$(ls ./.lighthouseci)
for txt in $FILES; do
  npm run moxci "$FILES/$txt"
done