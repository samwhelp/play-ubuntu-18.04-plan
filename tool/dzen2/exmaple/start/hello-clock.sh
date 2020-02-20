#!/usr/bin/env bash


## https://wiki.archlinux.org/index.php/Lemonbar
## https://wiki.archlinux.org/index.php/Dzen

# Define the clock
Clock() {
        #DATETIME=$(date "+%a %b %d, %T")
		DATETIME=$(date "+%A %Y-%m-%d %H:%M:%S")

        echo -n "$DATETIME"
}

# Print the clock

while true; do
        echo "$(Clock)"
        sleep 1
done | dzen2 -p

