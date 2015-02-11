Sequentially write image to all USB disks
=========================================
Example:
```sh
perl -w make_avenir_usb.pl ~/Downloads/avenirC3proto05.img >runme.sh
```
Outputs to runme.sh
```sh
#!/bin/sh
diskutil unmountDisk /dev/disk3
sudo dd if=/Users/demo/Downloads/avenirC3proto05.img of=/dev/rdisk3 bs=1m

diskutil unmountDisk /dev/disk2
sudo dd if=/Users/demo/Downloads/avenirC3proto05.img of=/dev/rdisk2 bs=1m

sudo md5 /Users/demo/Downloads/avenirC3proto05.img
sudo md5 /dev/disk3
sudo md5 /dev/disk2
```
So then do sh -x runme.sh