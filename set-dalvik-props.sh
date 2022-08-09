#!/system/bin/sh

setprop sys.phh.test.prop "7m"
MemTotalStr=`cat /proc/meminfo | grep MemTotal`
MemTotal=${MemTotalStr:16:8}
if [ $MemTotal -gt 9000000 ]; then
    setprop dalvik.vm.heapstartsize "24m"
    setprop dalvik.vm.heapgrowthlimit "384m"
    setprop dalvik.vm.heapsize "512m"
    setprop dalvik.vm.heaptargetutilization "0.42"
    setprop dalvik.vm.heapminfree "8m"
    setprop dalvik.vm.heapmaxfree "56m"
elif [ $MemTotal -gt 7000000 ]; then
    setprop dalvik.vm.heapstartsize "24m"
    setprop dalvik.vm.heapgrowthlimit "256m"
    setprop dalvik.vm.heapsize "512m"
    setprop dalvik.vm.heaptargetutilization "0.46"
    setprop dalvik.vm.heapminfree "8m"
    setprop dalvik.vm.heapmaxfree "48m"
else
    setprop dalvik.vm.heapstartsize "16m"
    setprop dalvik.vm.heapgrowthlimit "256m"
    setprop dalvik.vm.heapsize "512m"
    setprop dalvik.vm.heaptargetutilization "0.5"
    setprop dalvik.vm.heapminfree "8m"
    setprop dalvik.vm.heapmaxfree "32m"
fi
