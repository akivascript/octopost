#!/bin/bash
LOG="$(/usr/bin/ruby -X /usr/local/bin octopost.rb $1 $2 $3)\n"
cd $1
LOG="$LOG $(rake generate 2>&1)"
LOG="$LOG $(git pull 2>&1)"
LOG="$LOG $(git add -A 2>&1)"
LOG="$LOG $(git commit -m 'Add latest post.' 2>&1)"
LOG="$LOG $(git push 2>&1)"
echo $LOG
