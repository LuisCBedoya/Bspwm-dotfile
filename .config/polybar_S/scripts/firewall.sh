#!/bin/sh

if sudo /usr/bin/ufw status | grep -q "Status: active"; then
    status_firewall="On"
else
    status_firewall="Off	"
fi

echo "$status_firewall"
