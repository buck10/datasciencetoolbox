#!/bin/bash

# update package lists
apt-get update

# unminize the ubuntu docker image
yes | unminimize

# setup timezone to UTC
ln -fs /usr/share/zoneinfo/UTC /etc/localtime
apt-get install -y tzdata
export DEBIAN_FRONTEND=noninteractive
dpkg-reconfigure tzdata

# install requirements for ansible playbook package installation.
apt-get install -y python3 python3-pip sudo
