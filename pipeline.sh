#!/bin/bash

docker build -t $1 - < firstTest
WC=`docker run --cidfile="$1.cid" piptest`

CID=`cat $1.cid`
echo 'running'
echo $CID

if [ $WC > "0" ]
then
  # echo 'SUCCESS' 
  #now get the container id of what was just run
  docker commit $CID nborkert/$1
  docker push nborkert/$1
fi

rm $1.cid
rm 0
