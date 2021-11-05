# Getting Started

```
$cd $CHIPYARD_PATH/software/firemarshal/example-workloads
$git clone https://github.com/KingFrige/run-spec2006-workload.git
 
$cd $CHIPYARD_PATH/software/firemarshal
 
#build & install
$./marshal -v -d build example-workloads/run-spec2006-workload/marshal-configs/run-spec2006.json
$./marshal -v -d install -t prototype example-workloads/run-spec2006-workload/marshal-configs/run-spec2006.json
 
$guestmount --pid-file guestmount.pid -a images/run-spec2006.img -m /dev/sda disk-mount
$ll disk-mount
 
$guestumount disk-mount

# uploads
$sudo dd if=images/run-spec2006-bin-nodisk-flat of=/dev/sdc1 

```

# ref

[firemarshal](https://github.com/firesim/FireMarshal)

[coremark-workload ](https://github.com/ucb-bar/coremark-workload)
