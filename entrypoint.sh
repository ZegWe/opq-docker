#! /bin/bash

token=$GITTER_TOKEN
sed -i "s/Token = \"\"/Token = \"${token}\"/g" CoreConf.conf
./OPQBot
