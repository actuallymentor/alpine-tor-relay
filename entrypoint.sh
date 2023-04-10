#!/bin/bash

echo -e "Running Tor with torrc:\n"
cat /etc/tor/torrc

echo -e "Running processes:"
ps aux

echo -e "Starting tor"
exec tor -f /etc/tor/torrc
