#!/bin/sh
trap "exit" SIGNIT
INTERVAL=$1
echo Configured to generate new fortune every $INTERVAL seconds
mkdir -p /var/htdocs
while :
do
   echo $(date) Writing fortune to /var/htdocs/index.html
   /usr/games/fortune > /var/htdocs/index.thlml
   sleep $INTERVAL
done

