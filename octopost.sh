#!/bin/bash
/usr/bin/ruby -X /usr/local/bin octopost.rb $1 $2 $3
cd $1

log="Pulling latest... $(git pull 2>&1)"
log="$log Generating site... $(rake generate 2>&1)"
log="$log Adding site bits... $(git add -A 2>&1)"
log="$log $(git commit -m 'Add latest entry.' 2>&1)"
log="$log Publishing site... $(git push 2>&1)"

echo $log
