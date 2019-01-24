#!/bin/bash

DIRNAME="$(cd "$(dirname "$0")";pwd -P)"

mkdir -p ~/.config/mpd/playlist

cp $DIRNAME/mpd.tpl.conf $DIRNAME/mpd.conf
sed -i s/\$UID/$UID/g $DIRNAME/mpd.conf

ln -sf $DIRNAME/mpd.conf ~/.config/mpd/

systemctl --user enable mpd
systemctl --user start  mpd