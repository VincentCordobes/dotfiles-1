#!/bin/bash

DIRNAME="$(cd "$(dirname "$0")";pwd -P)"

# --------------------------------------------------------------- # Dependency #

sudo pacman -S --needed --noconfirm jack ffado celt

# --------------------------------------------------------------------- # Link #

mkdir -p ~/.config/systemd/user

ln -sf $DIRNAME/jack.service ~/.config/systemd/user/
sudo ln -sf $DIRNAME/limits.conf /etc/security/

systemctl --user daemon-reload
systemctl --user start jack.service
