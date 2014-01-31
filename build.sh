#!/usr/bin/env bash

set -e

imagename=crux

cdir=$(pwd)

crux_version=3.0
crux_url=http://ftp.morpheus.net/pub/linux/crux/crux-${crux_version}/iso/crux-${crux_version}.iso

if [[ ! -f crux-${crux_version}.iso ]]; then
    curl -q -O $crux_url
fi

./mkimage-crux.sh ./crux-${crux_version}.iso
