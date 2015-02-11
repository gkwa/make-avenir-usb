img31=~/Downloads/avenirC3proto05.img
img251=~/Downloads/restoreUSB_AvenirMiniVer2__2.5.1.img
img206=~/Downloads/restoreUSB_AvenirMiniRev2_0.6.img

all: runme31.sh
all: runme251.sh
all: runme206.sh

runme31.sh: $(img31)
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
