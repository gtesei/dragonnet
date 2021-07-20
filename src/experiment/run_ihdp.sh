#!/usr/bin/env bash


options=(
    dragonnet
    tarnet

)



for i in ${options[@]}; do
    echo $i
    python -m experiment.ihdp_main --data_base_dir /local_home/ag62216/var/dragonnet/dat/ihdp/csv\
                                 --knob $i\
                                 --output_base_dir /local_home/ag62216/var/dragonnet/result/ihdp\


done
