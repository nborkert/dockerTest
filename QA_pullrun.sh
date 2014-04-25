#!/bin/bash

docker pull nborkert/$1
WC=`docker run --cidfile="$1.cid" $1`

CID=`cat $1.cid`

if [ $WC > "0" ]
then
  echo 'SUCCESS' 
fi

rm $1.cid
rm 0

