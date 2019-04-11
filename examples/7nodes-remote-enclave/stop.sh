#!/bin/bash
killall geth bootnode constellation-node

if [ "`jps | grep tessera`" != "" ]
then
  jps | grep tessera | cut -d " " -f1 | xargs kill
else
  echo "tessera: no process found"
fi

if [ "`jps | grep enclave`" != "" ]
then
  jps | grep enclave | cut -d " " -f1 | xargs kill
else
  echo "tessera: no process found"
fi