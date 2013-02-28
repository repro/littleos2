ftp https://github.com/repro/littleos2/archive/master.zip
unzip -q master.zip
cp -r littleos2-master/.* .
echo '#include ".Xresources.warp4"' > .Xresources
mv .xsession.warp4 .xsession
mv .xinitrc.warp4 .xinitrc
rm -rf master.zip littleos2-master

xfconf-query -n -c xfwm4 -p /general/theme -s "Warp4" -t string
xfconf-query -n -c xfwm4 -p /general/title_font -s "Workplace Sans Bold 11" -t string
xfconf-query -n -c xfwm4 -p /general/title_alignment -s "left" -t string
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

xfconf-query -n -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s "${HOME}/.local/share/xfce4/backdrops/BIGBLU.png" -t string
xfconf-query -n -c xfce4-panel -p /panels -t int -s 1 -a 
xfconf-query -n -c xfce4-panel -p /panels/panel-1/position -s "p=4;x=0;y=0" -t string
xfconf-query -n -c xfce4-panel -p /panels/panel-1/nrows -s "1" -t int
xfconf-query -n -c xfce4-panel -p /panels/panel-1/length -s "100" -t int
xfconf-query -n -c xfce4-panel -p /panels/panel-1/length-adjust -s "false" -t bool
xfconf-query -n -c xfce4-panel -p /panels/panel-1/size -s "28" -t int
xfconf-query -n -c xfce4-panel -p /panels/panel-1/position-locked -s "true" -t bool
xfconf-query -n -c xfce4-panel -p /panels/panel-1/autohide -s "false" -t bool
xfconf-query -n -c xfce4-panel -p /panels/panel-1/background-style -s "1" -t int
xfconf-query -n -c xfce4-panel -p /panels/panel-1/disable-struts -s "false" -t bool
xfconf-query -n -c xfce4-panel -p /panels/panel-1/mode -s "0" -t int
xfconf-query -n -c xfce4-panel -p /panels/panel-1/plugin-ids -t int -s 1 -t int -s 2 -t int -s 3 -a
xfconf-query -n -c xfce4-panel -p /plugins/plugin-1 -t string -s "applicationsmenu"
#xfconf-query -n -c xfce4-panel -p /plugins/plugin-1/button-title -t string -s "Applications Menu"
xfconf-query -n -c xfce4-panel -p /plugins/plugin-2 -t string -s "separator"
xfconf-query -n -c xfce4-panel -p /plugins/plugin-2/style -t int -s "6"
xfconf-query -n -c xfce4-panel -p /plugins/plugin-2/expand -t bool -s "true"
xfconf-query -n -c xfce4-panel -p /plugins/plugin-3 -t string -s "clock"
xfconf-query -n -c xfce4-panel -p /plugins/plugin-3/digital-format -t string -s "%T"
xfconf-query -n -c xfce4-panel -p /plugins/plugin-3/mode -t int -s "2"
xfconf-query -n -c xfce4-panel -p /plugins/plugin-3/show-frame -t bool -s "false"

xfconf-query -n -c xfce4-session -p /general/SaveOnExit -t bool -s "false"

#xfconf-query -n -c xsettings -p /Net/IconThemeName -s "Warp4" -t string
