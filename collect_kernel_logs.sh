#!/bin/bash

log_dir="/home/fares/Downloads/ff"
log_file="$log_dir/kernel-logs-$(date -d '1 hour ago' +'%Y-%m-%dT%H-%M').txt"
compressed_file="$log_dir/kernel-logs-$(date -d '1 hour ago' +'%Y-%m-%dT%H-%M').tar.bz2"


journalctl -k --since "1 hour ago" > "$log_file"

# Compress the text file using tar and bzip2
tar -cjvf "$compressed_file" "$log_file"

rm "$log_file"

