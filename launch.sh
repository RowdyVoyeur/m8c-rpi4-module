#!/bin/sh

sudo systemctl restart jack

sleep 2

sudo -u patch /usr/local/m8c-rpi4/m8c.sh
