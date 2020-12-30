#!/bin/bash
# set -x
for d in `ls`; do [ -d $d ] && (cd $d; pwd; git pull --recurse-submodules; cd ../); done
