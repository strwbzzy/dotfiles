#!/bin/sh

# The wifi_change event supplies a $INFO variable in which the current SSID
# is passed to the script.

SSID="$(networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}' | xargs networksetup -getairportnetwork | sed "s/Current Wi-Fi Network: //")"

sketchybar --set wifi \
  icon=􀙇 icon.color=0xff58d1fc \
  label="$SSID"
