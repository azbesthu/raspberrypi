#!/bin/bash

GITHUB_REV=$(svn log --with-revprop git-commit --xml https://github.com/raspberrypi/firmware | grep  -B 4 "$1" -A 2 | grep "revision" | grep -o -E '[0-9]+')

svn co -r $GITHUB_REV https://github.com/raspberrypi/firmware/trunk/boot