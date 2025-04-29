nmcli connection add type wifi con-name "$1" ifname $2 autoconnect yes wifi.mode ap wifi.ssid "$1" wifi.band bg ipv4.method shared ipv6.method shared
nmcli connection up $1
