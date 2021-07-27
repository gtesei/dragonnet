#!/bin/bash

echo "******************** run_ihdp ***********************" 
cd src
options=(
    dragonnet
    tarnet

)

for i in ${options[@]}; do
    echo $i
    python -m experiment.ihdp_main --data_base_dir /local_home/ag62216/var/dragonnet/dat/ihdp_csv_1-1000/csv\
                                 --knob $i\
                                 --output_base_dir /local_home/ag62216/var/dragonnet/result/ihdp_csv_1-1000\


done

cd process_result 
echo "******************** ihdp_ate ***********************" 
python ihdp_ate.py --idhp_data_base_dir ihdp_csv_1-1000
