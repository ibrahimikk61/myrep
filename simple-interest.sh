#!/usr/bin/env bash
# simple-interest.sh - Calculate Simple Interest
# Usage: ./simple-interest.sh <principal> <rate_percent> <time_years>
# I = P * R * T / 100

p="$1"
r="$2"
t="$3"

if [ -z "$p" ] || [ -z "$r" ] || [ -z "$t" ]; then
  echo "Usage: $0 <principal> <rate_percent> <time_years>"
  exit 1
fi

# Use bc for decimal math
si=$(echo "scale=2; $p * $r * $t / 100" | bc -l)
echo "Simple interest = $si"
