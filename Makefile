all: portable grafik linux/bin/installiere_neo

portable:
	make -kC portable deploy

grafik:
	make -kC grafik 

linux/bin/installiere_neo:
	make -kC linux/bin/installiere_neo

svnclean:
	make -C portable clean
	make -C linux/bin/installiere_neo clean

clean: svnclean 
	make -kC grafik clean

svnupdate: 
	make svnclean
	svn up
	make -k

.PHONY: all clean svnupdate svnclean portable grafik linux/bin/installiere_neo