#!/bin/bash

set -o errexit
set -o pipefail

apt-get update
apt-get install -y alsa-utils libasound2-dev

# Recent node now installs dependencies before running preinstall scripts :(
npm install speaker@~0.2.6
