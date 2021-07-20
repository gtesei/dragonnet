#!/bin/bash

echo "******************** run_ihdp ***********************" 
cd src
./experiment/run_ihdp.sh
cd process_result
echo "******************** ihdp_ate ***********************" 
python ihdp_ate.py 
