#!/usr/bin/env bash
flatpak run com.discordapp.Discord &
while ! ss -xal | grep /run/user/$(id -u)/discord-ipc; do
    echo Waiting for Discord IPC socket
    sleep 1
done
# must cd into repo dir as it contains dependencies
python3 main.py
