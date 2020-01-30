#!/usr/bin/env bash

## create filelist / way 1
#feh --filelist list.txt /usr/share/backgrounds/*.jpg
#feh -f list.txt /usr/share/backgrounds/*.jpg


## create filelist / way 2
cat > list.txt <<EOF
/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg
/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg
/usr/share/backgrounds/Raindrops_On_The_Table_by_Alex_Fazit.jpg
EOF

#feh --slideshow-delay=3 --filelist list.txt
#feh --slideshow-delay 3 --filelist list.txt
feh -D 3 -f list.txt
