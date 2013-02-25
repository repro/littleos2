Sample Installation
===================

	ftp https://github.com/repro/littleos2/archive/master.zip
	unzip master.zip
	cp -r littleos2-master/.* .
	rm -r littleos2-master master.zip
	echo '#include ".Xresources.warp4"' > .Xresources
	mv .xsession.warp4 .xsession
	mv .xinitrc.warp4 .xinitrc

