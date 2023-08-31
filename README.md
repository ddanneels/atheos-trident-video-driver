# Trident Video Driver for Atheos - v.0.1a (2002-08-06)

Installation instructions are at the end of this file.



## WHAT IS THIS ?


This driver should allow you to run Atheos on your computer equiped with
any supported Trident video card.

Trident chipsets are commonly found in laptops from various brands.


This driver is distributed under GNU Public License (version 2), without
any warranty.


## STATUS


This is the first release of this driver.
It has only been tested on one system : IBM Thinkpad 760LD with
a Trident CYBER 9320 LCD Chip.

Current features :
 - currently uses bios to initiate graphic modes
 - non accelerated
 - software cursor

To Do:
 - 2D acceleration and MMIO implementation
 - virtual resolution (desktop is larger than physical screen)
 - use hardware cursor whenever possible (2 bits depth only)
 - ensure stability on SMP machines.


## SUPPORTED SYSTEM


It has been tested on Atheos v.0.3.7.

It should work on older Atheos versions (0.3.4...) or on Syllable.



## SUPPORTED HARDWARE


This driver has been successfully tested on:
 - Trident CYBER 9320 on Vesa Local Bus

It should also works with:
 - CYBER series
 - BLADE 3D series
 - CYBERBLADE series
 - TGUI series (except 9400): 9420, 9440, 9660, 9680...
 - PROVIDIA series
 - IMAGE series: 975, 985...

It will NOT work with:
 - TVGA series : 8200, 8800, 8900, 9000, 9100, 9200...
 - TGUI9400



## INSTALLATION


Binary:
1. Copy the objs/trident executable into /system/drivers/appserver/video.
2. Ensure that the file has read and execute permissions.

Sources:
1. Get the Atheos system source tree. Uncompress it wherever you want.
2. In the source tree, go to: "system/appserver/drivers/video/".
3. Uncompress trident driver. This should create a trident directory.
4. Enter the "trident" directory.
5. Type "make". This wil create the trident binary into objs/
6. Type "make install" to copy the driver onto your system.



## CREATE AN ATHEOS BOOT DISK


To create an atheos boot disk containing the trident driver, you must have
a running Atheos box.

Mount the second installation floppy disk. You will see a "bimage2.bin.gz"
file. Copy it on your hard disk. Unzip it. Mount it (with "-t ramfs").

From your mount point, go to "atheos/sys/drivers/appserver/video/".
You can now copy the trident driver (with read and execute permissions).

You can now save back your image file :
Use "makeramdisk <mount point> <destination file>" command.
Compress the new file with gzip.
Copy it back to the floppy, under the original name.

That's it.


Enjoy.



