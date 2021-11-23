#!/usr/bin/env bash

END=7

for i in $(seq $END); do
  echo $i;
  curl -s https://content.benji.org/days?day_eq=$i > content/day/${i}.json
done

ls -ltah content/day
