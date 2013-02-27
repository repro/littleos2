ftp https://github.com/repro/littleos2/archive/master.zip
unzip master.zip
cp -r littleos2-master/.* .
echo '#include ".Xresources.warp4"' > .Xresources
mv .xsession.warp4 .xsession
mv .xinitrc.warp4 .xinitrc
rm -rf master.zip littleos2-master

xfconf-query -n -c xfwm4 -p /general/theme -s "Warp4" -t string
xfconf-query -n -c xfwm4 -p /general/title_font -s "Workplace Sans Bold 11" -t string
xfconf-query -n -c xfwm4 -p /general/title_alignment -s "Left" -t string
xfconf-query -n -c xfwm4 -p /general/button_layout -s "O|CHM" -t string
xfconf-query -n -c xfwm4 -p /general/snap_to_border -s "false" -t bool
xfconf-query -n -c xfwm4 -p /general/snap_to_windows -s "false" -t bool

xfconf-query -n -c xsettings -p /Net/ThemeName -s "Warp4" -t string
xfconf-query -n -c xsettings -p /Gtk/FontName -s "Workplace Sans 11" -t string
xfconf-query -n -c xsettings -p /Xft/Antialias -s "1" -t int
# TODO: "Sub-pixel order: None"
#xfconf-query -n -c xsettings -p /Xft/Hinting -s "-1"
xfconf-query -n -c xsettings -p /Xft/HintStyle -s "hintslight" -t string
xfconf-query -n -c xsettings -p /Xft/DPI -s "96" -t int
xfconf-query -n -c xsettings -p /Gtk/ButtonImages -s "false" -t bool
xfconf-query -n -c xsettings -p /Gtk/MenuImages -s "false" -t bool

xfconf-query -n -c xsettings -p /Gtk/CursorThemeName -s "Warp4" -t string
xfconf-query -n -c xsettings -p /Net/DoubleClickTime -s "500" -t int
xfconf-query -n -c pointers -p /devwsmouse/RightHanded -s "false" -t bool
xfconf-query -n -c pointers -p /devwsmouse/RightHanded -s "false" -t bool

xfconf-query -n -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s "~/.local/share/xfce4/backdrops/BIGBLU.png" -t string

#xfconf-query -n -c xsettings -p /Net/IconThemeName -s "Warp4" -t string
