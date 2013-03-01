### Install the theme files

	cd ~
	ftp https://github.com/repro/littleos2/archive/master.zip
	unzip -q master.zip
	cp -r littleos2-master/.* .


### Setup the themes
	sh littleos2-master/warp4_setup.sh
	rm -rf master.zip littleos2-master


### Install the resource file
	echo '#include ".Xresources.warp4"' >> .Xresources


### In some cases one might use the sample X startup files:
	cp .xsession.warp4 .xsession
	cp .xinitrc.warp4 .xinitrc

