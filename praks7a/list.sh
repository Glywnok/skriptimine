#!/bin/bash
echo -n "Sisesta kataloog: "
read directory
for file in $(ls -a $directory)
do
  if test -f "$directory/$file"; then
    echo "$file: fail"
  elif test -L "$directory/$file"; then
    echo "$file: link"
  elif test -d "$directory/$file"; then
    echo "$file: kataloog"
  fi
done
