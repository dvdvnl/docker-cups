#!/bin/bash
docker rmi dvdvnl/cups:latest
docker build -t dvdvnl/cups:latest .
