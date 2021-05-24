#! /bin/bash

token=$1
sed -i "s/\"\"/\"${token}\"/g" CoreConf.conf
./OPQBot
