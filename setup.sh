#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

echo "Adding users and groups"

groupadd -g 3000 mc_server

useradd -u 3000 -g mc_server mc_server -s /bin/bash
usermod -a -G media_tools mc_server


mkdir -p /data/minecraft
