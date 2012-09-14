#!/bin/bash
/usr/bin/ruby -X /usr/local/bin octopost.rb $1 $2 $3
cd $1
rake generate
git pull
git add -A
git commit -m 'Add latest entry.'
git push
