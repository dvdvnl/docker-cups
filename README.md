# CUPS for Docker

# Run davole/cups
```
docker run --privileged -d -v /dev/bus/usb:/dev/bus/usb -v /var/run/dbus:/var/run/dbus -v $(pwd)/cupsd.conf:/etc/cups/cupsd.conf --net host --hostname cups --name cups dvdvnl/cups:latest
```

# Configure HP printer
```
docker exec -it cups hp-setup -i
```

