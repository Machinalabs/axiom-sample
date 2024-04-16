#!/bin/bash

echo "Running Circuit"

source .env

INPUT="/Users/edsonalcala/Repositories/AxiomLife/axiom-keccak/data/keccak_input.json"
CONFIG="/Users/edsonalcala/Repositories/AxiomLife/axiom-keccak/data/keccak_config.json"
RUST_BACKTRACE=1 cargo run -- --input "$INPUT" --config "$CONFIG" -k 12 -p $PROVIDER_URI mock
