#!/usr/bin/env bash

END=52

for i in $(seq $END); do
  echo "=== PROCESSING DAY : $i ==="
  curl -s https://content.benji.org/days?day_eq=$i > content/day/${i}.json
  cat content/day/${i}.json
  echo "=== FINISHED DAY: ${i} ==="
done

echo "Leaving with"

ls -ltah content/day
