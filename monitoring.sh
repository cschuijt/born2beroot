echo -n "#Architecture: "
uname -a
echo -n "#Physical CPUs: "
nproc --all
echo -n "#VCPU"
cat /proc/cpuinfo | grep processor | wc -l
echo -n "#Memory Usage: "
free --mega | grep 'Mem:' | awk '{t = $2; f = $4; print (f, "MB free,", t, "MB total (", f/t*100, "% )")}'
echo -n "#Disk Usage (/): "
df -h | grep '/dev/mapper/cschuijt42--vg-root' | awk '{print ($4, "used of", $2, "(", $5, ")");}' 
echo -n "#Disk Usage (/home): "
df -h | grep '/dev/mapper/cschuijt42--vg-root' | awk '{print ($4, "used of", $2, "(", $5, ")");}' 
echo -n "#CPU Load: "
# command
echo -n "#Last boot: "
# command
echo -n "#LVM Use: "
# command
echo -n "#TCP Connections: "
# command
echo -n "#Users logged in: "
# command
echo -n "#Network IP: "
# command
echo -n "#Sudo commands: "
# command
