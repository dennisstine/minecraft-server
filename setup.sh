#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

echo "Adding users and groups"

groupadd -g 2000 media_tools

useradd -u 2000 -g media_tools plex -s /bin/bash
