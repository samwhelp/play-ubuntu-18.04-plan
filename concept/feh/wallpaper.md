
## Example

* [bg-scale](example/wallpaper/bg-scale.sh)


## Help

run

``` sh
$ man feh | grep 'BACKGROUND SETTING' -A 40
```

show

```
BACKGROUND SETTING
     In many desktop environments, feh can also be used as a background setter.  Unless you pass the --no-fehbg
     option, it will write a script to set the current background to ~/.fehbg.  So to have your background restored
     every time you start X, you can add "sh ~/.fehbg &" to your X startup script (such as ~/.xinitrc).  As of feh
     2.13, this script is executable, so "~/.fehbg &" will work as well.

     Note that feh does not support setting the wallpaper of GNOME shell desktops. In this environment, you can use
     "gsettings set org.gnome.desktop.background picture-uri file:///path" instead.

     For the --bg-center and --bg-max options, you can use the --geometry option to specify an offset from one side
     of the screen instead of centering the image.  Positive values will offset from the left/top side, negative
     values from the bottom/right.  +0 and -0 are both valid and distinct values.

     Note that all options except --bg-tile support Xinerama.  For instance, if you have multiple screens connected
     and use e.g.  --bg-center, feh will center or appropriately offset the image on each screen.  You may even
     specify more than one file, in that case, the first file is set on screen 0, the second on screen 1, and so on.

     Use --no-xinerama to treat the whole X display as one screen when setting wallpapers. You may also use
     --xinerama-index to use feh as a background setter for a specific screen.

     --bg-center
             Center the file on the background.  If it is too small, it will be surrounded by a black border

     --bg-fill
             Like --bg-scale, but preserves aspect ratio by zooming the image until it fits.  Either a horizontal or
             a vertical part of the image will be cut off

     --bg-max
             Like --bg-fill, but scale the image to the maximum size that fits the screen with black borders on one
             side.

     --bg-scale
             Fit the file into the background without repeating it, cutting off stuff or using borders.  But the
             aspect ratio is not preserved either

     --bg-tile
             Tile (repeat) the image in case it is too small for the screen

     --no-fehbg
             Do not write a ~/.fehbg file
```
