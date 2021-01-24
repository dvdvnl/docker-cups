#!/bin/bash
docker rm -f cups
docker run --privileged --restart always -d -v /dev/bus/usb:/dev/bus/usb -v /var/run/dbus:/var/run/dbus -v $(pwd)/cupsd.conf:/etc/cups/cupsd.conf --net host --hostname cups --name cups dvdvnl/cups:latest
docker exec -it cups hp-setup -i
