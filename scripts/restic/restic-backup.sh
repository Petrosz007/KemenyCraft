#!/bin/bash
set -e              # Will exit the script of any line fails, won't run the following lines
set -o xtrace       # Will print the commands being executed

# Enables variable inporting
set -o allexport

MY_PATH=`dirname "$0"`

# Create log folder
mkdir -p $MY_PATH/log/

# Import restic variables
source $MY_PATH/.restic.env

# Backup the files, log the output
restic backup ~/KemenyCraft/ \
    --tag automated \
    2>> $MY_PATH/log/restic.err \
    >> $MY_PATH/log/restic.log

# Remove unnecessary old snapshots
# 'forget' documentation: https://restic.readthedocs.io/en/stable/060_forget.html#removing-snapshots-according-to-a-policy
restic forget \
    --tag automated \
    --prune \
    --keep-hourly 24 --keep-daily 7 --keep-weekly 4 --keep-monthly 12 \
    2>> $MY_PATH/log/restic.err \
    >> $MY_PATH/log/restic.log

# Disables variable exporting
set +o allexport
