#!/bin/bash

INPUT_DIR="$HOME/Documents/coolstore"
OUTPUT_DIR="$HOME/Documents/analysis-output"
KANTRA_TAGS=(
  quarkus
  jakarta-ee8
  jakarta-ee9
  cloud-readiness
)

run_local_kantra() {
  echo "[+] Running Kantra locally..."
  kantra analyze \
    --input "$INPUT_DIR" \
    --output "$OUTPUT_DIR" \
    --overwrite \
    $(for tag in "${KANTRA_TAGS[@]}"; do echo -n "-t $tag "; done)
}
