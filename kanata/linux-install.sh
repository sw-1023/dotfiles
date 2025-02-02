#!/bin/sh

install ./bin/kanata /usr/local/bin/kanata
mkdir -p /etc/kanata
cp ./devone.kdb /etc/kanata/kanata.kbd
cp ./kanata.service /lib/systemd/system/kanata.service
systemctl start kanata
systemctl enable kanata
