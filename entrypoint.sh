#! /bin/bash

token=$1
sed -i "s/Token = \"\"/Token = \"${token}\"/g" CoreConf.conf
./OPQBot
