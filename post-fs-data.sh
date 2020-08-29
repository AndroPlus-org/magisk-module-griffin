#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
MAGISKTMP=/sbin/.magisk
# This script will be executed in post-fs-data mode

#logcat > /data/local/catlog/logcat.txt

mount -o bind /system/media/bootanimation.zip /oem/media/bootanimation.zip

cmd overlay enable --user 0 me.phh.treble.overlay.oneplus.op7t
