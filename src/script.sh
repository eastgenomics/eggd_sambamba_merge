#!/bin/bash
set -e -x -o pipefail

dx-download-all-inputs
mkdir -p out/merged_bam
output_name="${sorted_bams_prefix[0]}_merged.bam"
sambamba-0.8.1 merge $advanced_options "$output_name" "${sorted_bams_path[@]}"
mv "$output_name" out/merged_bam/
dx-upload-all-outputs

