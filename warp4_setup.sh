
#echo -n "Kill xfce4-panel and xfdesktop? (recommended) [Y/n]: "
#read ANSWER
#if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ] || [ "$ANSWER" == "" ]; then
#	pkill xfce4-panel
#	pkill xfdesktop
#fi

echo -n "Install .xsession file? [y/N]: "
read ANSWER
if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ]; then
    if [ -f .xsession ]; then
        cp .xsession /var/tmp/.xsession`date +%Y%m%d` && cp littleos2-master/xsession .xsession
    else
        cp littleos2-master/xsession .xsession
    fi
fi

echo -n "Install .xinitrc file? [y/N]: "
read ANSWER
if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ]; then
    if [ -f .xinitrc ]; then
        cp .xinitrc /var/tmp/.xinitrc`date +%Y%m%d` && cp littleos2-master/xinitrc .xinitrc
    else
        cp littleos2-master/xinitrc .xinitrc
    fi
fi

echo -n "Install the 'dot' files? (overwrites existing files) [Y/n]: "
read ANSWER
if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ] || [ "$ANSWER" == "" ]; then
	cp -r littleos2-master/.* .
fi

echo -n "Perform Xfconf setup? (Overwrites existing settings) [Y/n]: "
read ANSWER
if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ] || [ "$ANSWER" == "" ]; then
xfconf-query -c pointers -p /devwsmouse/RightHanded -s "false" -t bool -n
xfconf-query -c xfce4-desktop -p /backdrop -r -R
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/backdrop-cycle-enable -s "false" -t bool -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/backdrop-cycle-timer -s "10" -t int -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/brightness -s "1" -t int -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/color-style -t int -s "0" -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/color1 -t uint16 -s 11051 -t uint16 -s 0 -t uint16 -s 43690 -t uint16 -s 65535 -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/color2 -t uint16 -s 11051 -t uint16 -s 0 -t uint16 -s 43690 -t uint16 -s 65535 -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s "${HOME}/.local/share/xfce4/backdrops/BIGBLU.png" -t string -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-show -s "true" -t bool -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-style -s 0 -t int -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/last-single-image -s "${HOME}/.local/share/xfce4/backdrops/BIGBLU.png" -t string -n
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/saturation -s "1.0" -t double -n
xfconf-query -c xfce4-desktop -p /desktop-icons/style -s "2" -t int -n
xfconf-query -c xfce4-desktop -p /desktop-icons/icon-size -s "36" -t int -n
xfconf-query -c xfce4-desktop -p /desktop-icons/use-custom-font-size -s "false" -t bool -n
xfconf-query -c xfce4-desktop -p /desktop-icons/font-size -s "11.0" -t double -n
xfconf-query -c xfce4-desktop -p /desktop-icons/show-thumbnails -s "false" -t bool -n
xfconf-query -c xfce4-desktop -p /desktop-icons/single-click -s "false" -t bool -n
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-home -s "true" -t bool -n
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-filesystem -s "true" -t bool -n
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-trash -s "true" -t bool -n
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-removable -s "true" -t bool -n
xfconf-query -c xfce4-desktop -p /desktop-menu/show -s "true" -t bool -n
xfconf-query -c xfce4-desktop -p /desktop-menu/show-icons -s "false" -t bool -n
xfconf-query -c xfce4-desktop -p /windowlist-menu/show -s "true" -t bool -n
xfconf-query -c xfce4-desktop -p /windowlist-menu/show-icons -s "false" -t bool -n
xfconf-query -c xfce4-desktop -p /windowlist-menu/show-sticky-once -s "true" -t bool -n
xfconf-query -c xfce4-desktop -p /windowlist-menu/show-submenus -s "false" -t bool -n
xfconf-query -c xfce4-desktop -p /windowlist-menu/show-workspace-names -s "false" -t bool -n
xfconf-query -c xfce4-desktop -p /panels -r -R
xfconf-query -c xfce4-desktop -p /plugins -r -R
xfconf-query -c xfce4-panel -p /panels -s 1 -t int -a -n
xfconf-query -c xfce4-panel -p /panels/panel-1/autohide -s "false" -t bool -n
xfconf-query -c xfce4-panel -p /panels/panel-1/background-style -s "0" -t int -n
xfconf-query -c xfce4-panel -p /panels/panel-1/background-color -r
xfconf-query -c xfce4-panel -p /panels/panel-1/background-color -t uint16 -s "52428" -t uint16 -s "52428" -t uint16 -s "52428" -t uint16 -s "65535" -n
xfconf-query -c xfce4-panel -p /panels/panel-1/background-image -r
xfconf-query -c xfce4-panel -p /panels/panel-1/disable-struts -s "false" -t bool -n
xfconf-query -c xfce4-panel -p /panels/panel-1/length -s "100" -t int -n
xfconf-query -c xfce4-panel -p /panels/panel-1/length-adjust -s "false" -t bool -n
xfconf-query -c xfce4-panel -p /panels/panel-1/mode -s "0" -t int -n
xfconf-query -c xfce4-panel -p /panels/panel-1/nrows -s "1" -t int -n
xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids -t int -s 1 -t int -s 2 -t int -s 3 -t int -s 4 -a -n
xfconf-query -c xfce4-panel -p /panels/panel-1/position -s "p=4;x=0;y=0" -t string -n
xfconf-query -c xfce4-panel -p /panels/panel-1/position-locked -s "true" -t bool -n
xfconf-query -c xfce4-panel -p /panels/panel-1/size -s "28" -t int -n
xfconf-query -c xfce4-panel -p /plugins/plugin-1 -t string -s "applicationsmenu" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-1/show-generic-names -s "false" -t bool -n
xfconf-query -c xfce4-panel -p /plugins/plugin-1/show-menu-icons -s "false" -t bool -n
xfconf-query -c xfce4-panel -p /plugins/plugin-1/show-tooltips -s "false" -t bool -n
xfconf-query -c xfce4-panel -p /plugins/plugin-1/show-button-title -s "true" -t bool -n
xfconf-query -c xfce4-panel -p /plugins/plugin-1/custom-menu -s "false" -t bool -n
xfconf-query -c xfce4-panel -p /plugins/plugin-1/custom-menu-file -r -R
xfconf-query -c xfce4-panel -p /plugins/plugin-1/button-icon -s "xfce4-panel-menu" -t string -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2 -t string -s "tasklist" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/show-labels -t bool -s "true" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/flat-buttons -t bool -s "false" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/show-handle -t bool -s "true" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/sort-order -t int -s "1" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/grouping -t int -s "0" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/switch-workspace-on-unminimize -t bool -s "false" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/show-wireframes -t bool -s "false" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/window-scrolling -t bool -s "true" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/include-all-workspaces -t bool -s "false" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/include-all-monitors -t bool -s "true" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2/show-only-minimized -t bool -s "false" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-3 -t string -s "separator" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-3/expand -t bool -s "true" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-3/style -t int -s "0" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-4 -t string -s "clock" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-4/digital-format -t string -s "%T" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-4/mode -t int -s "2" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-4/tooltip-format -t string -s "%A %d %B %Y" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-4/show-frame -t bool -s "false" -n
xfconf-query -c xfce4-session -p /general/SaveOnExit -t bool -s "false" -n
xfconf-query -c xfce4-session -p /startup/ssh-agent/enabled -t bool -s false -n
xfconf-query -c xfwm4 -p /general/button_layout -s "O|CHM" -t string -n
xfconf-query -c xfwm4 -p /general/box_resize -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/box_move -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/double_click_action -s "maximize" -t string -n
xfconf-query -c xfwm4 -p /general/snap_to_border -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/snap_to_windows -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/snap_width -s "10" -t int -n
xfconf-query -c xfwm4 -p /general/wrap_workspaces -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/wrap_windows -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/wrap_resistance -s "10" -t int -n
xfconf-query -c xfwm4 -p /general/theme -s "Warp4" -t string -n
xfconf-query -c xfwm4 -p /general/title_alignment -s "left" -t string -n
xfconf-query -c xfwm4 -p /general/title_font -s "Workplace Sans Bold 11" -t string -n
xfconf-query -c xfwm4 -p /general/click_to_focus -s "true" -t bool -n
xfconf-query -c xfwm4 -p /general/focus_delay -s "5" -t int -n
xfconf-query -c xfwm4 -p /general/focus_new -s "true" -t bool -n
xfconf-query -c xfwm4 -p /general/raise_on_focus -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/raise_delay -s "246" -t int -n
xfconf-query -c xfwm4 -p /general/raise_on_click -s "true" -t bool -n
xfconf-query -c xfwm4 -p /general/cycle_minimum -s "true" -t bool -n
xfconf-query -c xfwm4 -p /general/cycle_hidden -s "true" -t bool -n
xfconf-query -c xfwm4 -p /general/cycle_workspaces -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/cycle_draw_frame -s "true" -t bool -n
xfconf-query -c xfwm4 -p /general/prevent_focus_stealing -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/focus_hint -s "true" -t bool -n
xfconf-query -c xfwm4 -p /general/activate_action -s "bring" -t string -n
xfconf-query -c xfwm4 -p /general/tile_on_move -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/use_compositing -s "false" -t bool -n
xfconf-query -c xfwm4 -p /general/workspace_count -t int -s 1 -n
xfconf-query -c xfwm4 -p /general/workspace_names -t string -s "Workspace 1" -a -n
xfconf-query -c xfwm4 -p /general/margin_top -t int -s "0" -n
xfconf-query -c xfwm4 -p /general/margin_left -t int -s "0" -n
xfconf-query -c xfwm4 -p /general/margin_right -t int -s "0" -n
xfconf-query -c xfwm4 -p /general/margin_bottom -t int -s "0" -n
xfconf-query -c xsettings -p /Gtk/ButtonImages -s "false" -t bool -n
xfconf-query -c xsettings -p /Gtk/CanChangeAccels -s "false" -t bool -n
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s "Warp4LH" -t string -n
xfconf-query -c xsettings -p /Gtk/FontName -s "Workplace Sans 11" -t string -n
xfconf-query -c xsettings -p /Gtk/MenuImages -s "false" -t bool -n
xfconf-query -c xsettings -p /Gtk/ToolbarStyle -s "icons" -t string -n
xfconf-query -c xsettings -p /Net/DoubleClickTime -s "500" -t int -n
#xfconf-query -c xsettings -p /Net/IconThemeName -s "Warp4" -t string -n
xfconf-query -c xsettings -p /Net/ThemeName -s "Warp4" -t string -n
xfconf-query -c xsettings -p /Xft/Antialias -s "1" -t int -n
xfconf-query -c xsettings -p /Xft/DPI -s "96" -t int -n
xfconf-query -c xsettings -p /Xft/HintStyle -s "hintslight" -t string -n
xfconf-query -c xsettings -p /Xft/RGBA -s "none" -t string -n
#xfconf-query -c xsettings -p /Xft/Hinting -s "-1" -n
fi

xfce4-panel --restart
xfdesktop --reload

echo -n "Remove temporary install files (master.zip, littleos2-master)? [Y/n]: "
read ANSWER
if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ] || [ "$ANSWER" == "" ]; then
	rm -rf master.zip littleos2-master
fi

echo -n "Logout? [y/N]: "
read ANSWER
if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ]; then
	xfce4-session-logout --logout
fi
