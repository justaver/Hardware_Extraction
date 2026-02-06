#!/bin/bash
output="passwordmanager.txt"
> "$output"

for net in $(nmcli -t -f NAME connection show); do
    echo "Network: $net" >> "$output"
    nmcli -s -g 802-11-wireless-security.psk connection show "$net" >> "$output" 2>/dev/null
    echo "----" >> "$output"
done

echo "Saved to $output"
