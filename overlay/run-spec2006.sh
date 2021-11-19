#!/bin/bash

mkdir /data

mount /dev/mmcblk0p2 /data

if [$? -ne 0];then
  echo "============"
  echo "fail!"
  echo "============"
  exit
else
  echo "============"
  echo "mount data!"
  echo "============"
fi

ls -l /data

cd /data/board-benchmarks
./run-spec2006-tasks.sh

sync;

ls -l /data

echo ""
echo "============"
echo "task finish!"
echo "============"
echo ""

# umount /data
# poweroff -f

