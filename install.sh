#!/bin/bash

set -e

sudo apt update -y
sudo apt install -y ansible git

ansible-pull -U https://github.com/neftales/my-setup.git -C auto-install
