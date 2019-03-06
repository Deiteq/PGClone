#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################

# Outside Variables
dlpath=$(cat /var/plexguide/server.hd.path)
sleep 2

mergerfs -o sync_read,allow_other,direct_io,use_ino,func.getattr=newest,nonempty,security_capability=false,xattr=nosys,category.create=ff,umask=002,uid=1000,gid=1000,fsname=pgunion \
$dlpath/move=RW:$dlpath/downloads=NC:$dlpath/pgblitz/upload=NC:/mnt/tdrive=NC:/mnt/odrive=NC:/mnt/gdrive=NC:/mnt/tcrypt=NC:/mnt/ocrypt=NC:/mnt/gcrypt=NC /mnt/unionfs
