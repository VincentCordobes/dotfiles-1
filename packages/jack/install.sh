#!/bin/bash

DIRNAME="$(cd "$(dirname "$0")";pwd -P)"

mkdir -p ~/.config/systemd/user

ln -sf $DIRNAME/jack.service ~/.config/systemd/user/
sudo ln -sf $DIRNAME/limits.conf /etc/security/

systemctl --user daemon-reload
systemctl --user enable jack.service
systemctl --user start jack.service
