#! /bin/bash

platform=$1

apk add --no-cache curl tar

if [[ "$platform" = "linux/amd64" ]]
then
    curl -O https://files.gitter.im/5f27939ed73408ce4feb3112/zMQB/OPQBot_6.0.18_linux_amd64.tar.gz
    tar -xvf OPQBot_6.0.18_linux_amd64.tar.gz
    mv OPQBot_6.0.12_linux_amd64 OPQBot
elif [[ "$platform" = "linux/arm/v7" ]]
then
    curl -O https://files.gitter.im/5f27939ed73408ce4feb3112/7FDm/OPQBot_6.0.18_linux_arm.tar.gz
    tar -xvf OPQBot_6.0.18_linux_arm.tar.gz
    mv OPQBot_6.0.12_linux_arm OPQBot
elif [[ "$platform" = "linux/arm64" ]]
then
    curl -O https://files.gitter.im/5f27939ed73408ce4feb3112/7FDm/OPQBot_6.0.18_linux_arm64.tar.gz
    tar -xvf OPQBot_6.0.18_linux_arm64.tar.gz
    mv OPQBot_6.0.12_linux_arm64 OPQBot
else
    echo "Platform Not Available !"
fi
