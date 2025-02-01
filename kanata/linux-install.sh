#!/bin/sh

install ./bin/kanata /usr/local/bin/kanata
cp ./kanata.service /lib/systemd/system/kanata.service
cp ./devone.kdb /etc/kanata/kanata.kbd
mkdir -p /etc/kanata
