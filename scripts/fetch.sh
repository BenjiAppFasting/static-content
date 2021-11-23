#!/usr/bin/env bash

END=7

for i in $(seq $END); do
  curl -s https://content.benji.org/days?day_eq=$i > content/day/${i}.json
  cat content/day/${i}.json
done
