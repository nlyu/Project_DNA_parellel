# Project_DNA_parellel

cs267 hw3

Nuochen Lyu 
Xiaoyun Zhao

# Set up and run

Login to cori or any super computer center

Configuration `source module.sh`

Compile `make`

Request Node from Cori `salloc -N 1 -A mp309 -t 60:00 -q debug --qos=interactive -C haswell`

Run with your DNA Data `srun -N 1 -n 32 ./kmer_hash /global/project/projectdirs/mp309/cs267-spr2018/hw3-datasets/test.txt`

Or `source mybenmark.sh`

change environment variable for large dataset:
export GASNET_MAX_SEGSIZE=5000MB/H
export UPCXX_SEGMENT_MB=5000

[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)
