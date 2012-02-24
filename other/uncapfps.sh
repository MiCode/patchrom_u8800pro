#!/system/bin/sh

#zdzihu: uncap fps
mount -t debugfs debugfs /sys/kernel/debug
echo '0' > /sys/kernel/debug/msm_fb/0/vsync_enable
umount /sys/kernel/debug