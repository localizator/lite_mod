#!/sbin/sh
mount -a
for patch in $(find /tmp/patches -type d -name "*.apk");do
    cd $patch
    /tmp/zip -r $(find /system -name $(basename $patch)) *
    cd /tmp
done
