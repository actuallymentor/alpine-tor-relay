#!/bin/bash

echo -e "Running Tor with torrc:\n"
cat /etc/tor/torrc

echo -e "Running processes:"
ps aux

wait 5
echo -e "Starting tor"
exec tor -f /etc/tor/torrc
