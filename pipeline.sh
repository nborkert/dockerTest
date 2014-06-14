#!/bin/bash

docker build -t $1 - < firstTest
WC=`docker run --cidfile="$1.cid" $1`

CID=`cat $1.cid`

if [ $WC -gt 0 ]
then
 # echo 'SUCCESS' 
  docker commit $CID nborkert/$1
  docker push nborkert/$1
fi

rm $1.cid
# rm 0

