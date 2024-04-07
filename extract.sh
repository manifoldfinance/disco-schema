#!/usr/bin/env bash
set -euo pipefail

FLASHBOTS_DATA_RAW=builder-submissions_slot-5818001-to-5823000.csv
# mlr --csv cut -f builder_pubkey $FLASHBOTS_DATA_RAW > "$(date +%s).csv"
mlr --csv cut -f builder_pubkey $FLASHBOTS_DATA_RAW > pubkey-5818001-to-5823000.csv
mlr uniq -a pubkey-5818001-to-5823000.csv > unique_pubkey-5818001-to-5823000.csv
#mlr --csv cut -f builder_pubkey builder-submissions_slot-6154501-to-6158500.csv > builder_pubkeys.txt
#mlr uniq -a builder_pubkeys.txt > output_unique_pubkeys.txt


#mlr --csv cut -x -f  '1'  unique-pubkey*.csv > combined_pubkey.csv

#mlr  --d2c cat combined_pubkey.csv > total_pubkey_latest