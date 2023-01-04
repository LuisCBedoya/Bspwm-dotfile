#!/bin/sh
STATUS=$(sudo nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)


if sudo nordvpn account | grep -q "You are not logged in."; then
    icon=" "
    echo "%{F#FF6666}$icon%{F- }nologin"   	
fi


if [ "$STATUS" = "Connected" ]; then
    icon="  "
    iconvpn=" "
    ip=$(sudo nordvpn status | grep IP | tr -d ' ' | cut -d ':' -f2)
    country=$(sudo nordvpn status | grep Country | tr -d ' ' | cut -d ':' -f2)
    city=$(sudo nordvpn status | grep City | tr -d ' ' | cut -d ':' -f2)
    echo "%{F#00994C}$icon%{F- }login  %{F#00994C}$iconvpn%{F- } [VPN]connected  $ip  $country" 

else
    icon="  "
    iconvpn=" "
    status=$(sudo nordvpn status | grep status | tr -d ' ' | cut -d ':' -f2)
    echo "%{F#FFFF66}$icon%{F- }login  %{F#FF6666}$iconvpn%{F- } [VPN]disconnected"  	
fi







