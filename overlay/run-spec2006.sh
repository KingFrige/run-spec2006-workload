#!/bin/sh

mkdir /data

mount /dev/mmcblk0p2 /data

cd /data/board-benchmarks
./run-spec2006.sh

sync; umount /data

echo ""
echo "============"
echo "task finish!"
echo "============"
echo ""

# poweroff -f

