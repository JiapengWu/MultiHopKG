#!/usr/bin/env bash
export PYTHONPATH=`pwd`
#for i in `ls data`
#do CUDA_VISIBLE_DEVICES=1 python src/experiments.py --data_dir data/${i} --process_data --add_reverse_relations True
#done

cd PTransE
export PYTHONPATH=`pwd`
#for i in `ls data/`
#do python PCRA.py $i
#done
cd PTransE_add
for i in `ls ../data/`
do ./Train_TransE_path 1 $i
done