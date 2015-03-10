img321=~/Downloads/restoreUSB_AvenirMiniVer3__3.2.1.img
img31=~/Downloads/avenirC3proto05.img
img255=~/Downloads/restoreUSB_AvenirMiniVer2__2.5.5.img
img254=~/Downloads/restoreUSB_AvenirMiniVer2__2.5.4.img
img253=~/Downloads/restoreUSB_AvenirMiniVer2__2.5.3.img
img252=~/Downloads/restoreUSB_AvenirMiniVer2__2.5.2.img
img251=~/Downloads/restoreUSB_AvenirMiniVer2__2.5.1.img
img206=~/Downloads/restoreUSB_AvenirMiniRev2_0.6.img

all: runme321.sh
all: runme31.sh
all: runme255.sh
all: runme254.sh
all: runme253.sh
all: runme252.sh
all: runme251.sh
all: runme206.sh

runme321.sh: $(img321)
	perl -w make_avenir_usb.pl $< >$@
	chmod +x $@

runme31.sh: $(img31)
	perl -w make_avenir_usb.pl $< >$@
	chmod +x $@

runme255.sh: $(img255)
	perl -w make_avenir_usb.pl $< >$@
	chmod +x $@

runme254.sh: $(img254)
	perl -w make_avenir_usb.pl $< >$@
	chmod +x $@

runme253.sh: $(img253)
	perl -w make_avenir_usb.pl $< >$@
	chmod +x $@

runme252.sh: $(img252)
	perl -w make_avenir_usb.pl $< >$@
	chmod +x $@

runme251.sh: $(img251)
	perl -w make_avenir_usb.pl $< >$@
	chmod +x $@

runme206.sh: $(img206)
	perl -w make_avenir_usb.pl $< >$@
	chmod +x $@

clean:
	rm -f runme*.sh
