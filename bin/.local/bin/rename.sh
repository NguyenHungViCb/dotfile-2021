#!/bin/sh

find . -iname ".git" -exec rename .git .git.bak '{}' \;
