#!/bin/bash

# Check if root privileges are available
if [ "$(id -u)" -ne 0 ]; then
    echo "This script requires root privileges. Please run as root or with sudo."
    exit 1
fi

# Network interface (usually wlan0, but it may vary)
INTERFACE="wlan0"

# Check if the network interface exists
if ! iw dev | grep -q "$INTERFACE"; then
    echo "Network interface $INTERFACE not found. Please check your interface."
    exit 1
fi

# Enable the wireless interface (in case it's down)
ip link set $INTERFACE up

# Start scanning for networks
echo "Scanning for WiFi networks..."
iwlist $INTERFACE scan | grep -E "Cell|ESSID|Quality|Encryption|Channel"

# Optionally, you can redirect output to a log file for better readability:
# iwlist $INTERFACE scan | grep -E "Cell|ESSID|Quality|Encryption|Channel" > wifi_scan_results.txt

echo "Scan completed."
