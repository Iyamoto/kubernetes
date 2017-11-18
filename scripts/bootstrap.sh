#!/bin/bash

set -e

echo "Starting bootstrap script"

sudo pacman -S --noconfirm puppet
sudo puppet apply /vagrant/puppet/bootstrap.pp
