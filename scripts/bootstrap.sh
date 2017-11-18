#!/bin/bash

set -e

echo "Starting bootstrap script"

sudo pacman -Syu
sudo pacman -S --noconfirm puppet
sudo pacman -Sc --noconfirm

sudo puppet apply /vagrant/puppet/bootstrap.pp
sudo puppet apply /vagrant/puppet/k8s.pp
