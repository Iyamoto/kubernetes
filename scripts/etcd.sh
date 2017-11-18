#!/bin/bash

set -e

echo "Instaling etcd"

cd ~/
git clone https://aur.archlinux.org/etcd.git
cd etcd
makepkg -sic --noconfirm --skippgpcheck
