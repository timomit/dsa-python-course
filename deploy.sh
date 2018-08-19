#!/bin/bash
cd ../../
rm -rf release/
nbgrader assign --create --NbGrader.config_file=source/course/nbgrader_config.py
cd release/course/
git branch -D deploy
git checkout -b deploy
git commit -a -m"Prepare for deploy"
git push --force origin deploy
