# usage: perl -w $0 ~/Downloads/avenirC3proto05.img >runme.sh && sh -x runme.sh

my $img=$ARGV[0];

# Get list of USB drives
$/=undef;
open(F, "-|", qw(system_profiler SPUSBDataType)) or
    die "Cannot run system_profiler SPUSBDataType: $!\n";
$_ = <F>;
close(F);

print "#!/bin/sh\n";

@disks=m{((?:USB DISK|Mass Storage):.*?\n\n.*?\n\n)}sg;
for(@disks){
    my ($disk) = ($_ =~ /BSD Name: (.*)/); #eg: disk3
    print qq{diskutil unmountDisk /dev/$disk};
    print "\n";
    print qq{sudo dd if=$img of=/dev/r$disk bs=1m};
    print "\n";
    print "\n";
}

print qq/exit/;
print "\n";

# sudo md5 /dev/disk3
print qq{sudo md5 $img};
print "\n";
for(@disks){
    my ($disk) = ($_ =~ /BSD Name: (.*)/); #eg: disk3
    print qq{sudo md5 /dev/$disk};
    print "\n";
}
