#!/bin/bash
mvn test
if [ $? -eq 0 ]; then
  git add -A
  git commit -m "TCR: Tests passed"
else
  git reset --hard
fi