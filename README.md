### Install the theme files

	cd ~
	ftp https://github.com/repro/littleos2/archive/master.zip
	unzip -q master.zip
	cp -r littleos2-master/.* .
	


### Setup the themes
	sh littleos2-master/warp4_setup.sh
	rm -rf master.zip littleos2-master
	


### Install the resource file
	grep '^#include ".Xresources.warp4"' .Xresources || echo '#include ".Xresources.warp4"' >> .Xresources
	[ -f .xombrero.conf ] || mv .xombrero.conf.warp4 .xombrero.conf
	[ -f .xsession ] || mv .xsession.warp4 .xsession
	[ -f .xinitrc ] || mv .xinitrc.warp4 .xinitrc
	


### Finish installation
	xfce4-session-logout --logout
	
