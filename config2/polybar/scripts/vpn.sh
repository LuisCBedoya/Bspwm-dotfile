#!/bin/sh
STATUS=$(sudo nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = "Connected" ]; then
    icon="旅"
    ip=$(sudo nordvpn status | grep IP | tr -d ' ' | cut -d ':' -f2)
    country=$(sudo nordvpn status | grep Country | tr -d ' ' | cut -d ':' -f2)
    city=$(sudo nordvpn status | grep City | tr -d ' ' | cut -d ':' -f2)
    echo "%{F#00994C} $icon VPN $STATUS %{F- }  $ip  $country  $city " 

else
    icon="旅"
    status=$(sudo nordvpn status | grep status | tr -d ' ' | cut -d ':' -f2)
    echo %{F#FF6666} $icon VPN $STATUS %{F- }  	
fi







