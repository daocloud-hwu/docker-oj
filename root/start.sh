#!/bin/sh
export GOPATH=/home/acm/go
export PATH=$GOPATH/bin:$PATH
mongod --fork --logpath /home/acm/Data/mongo.log -port 8090 --dbpath /home/acm/Data
/home/acm/go/src/GoOnlineJudge/RunServer &
restweb run /home/acm/go/src/GoOnlineJudge &