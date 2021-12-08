#!/bin/bash

echo "*************"
echo "start..."
echo "*************"

source set_env.sh

cd /data/board-benchmarks/riscv-spec-int-test 
./run.sh

cd /data/board-benchmarks/riscv-spec-fp-test 
./run.sh

cd /data/board-benchmarks/riscv-spec-int-ref 
./run.sh

cd /data/board-benchmarks/riscv-spec-fp-ref 
./run.sh

echo "*************"
echo "end!"
echo "*************"

sleep 100

sync
