#!/bin/bash

echo starting mongo
mongod -f /mongo/mongod.conf --fork
echo mongo started

exit 0 