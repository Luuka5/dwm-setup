#!bin/bash

firstindex=$((1 + $RANDOM % 32))
delay=300

index=0
for filename in ~/setup/wallpapers/redplanets/*.png; do
  index=$(($index+1))
  if (($index > firstindex)); then
    feh "$filename" --bg-fill
    sleep "$delay"
  fi
done

while :
do
  for filename in ~/setup/wallpapers/redplanets/*.png; do
    feh "$filename" --bg-fill
    sleep "$delay"
  done
done

