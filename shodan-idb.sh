#!/bin/bash

# Function to process an IP address
process_input() {
  local input="$1"
  curl -s "https://internetdb.shodan.io/$input" | jq 'select(.vulns != null and .vulns != []) | {hostnames: .hostnames, ip: .ip, ports: .ports, vulnerabilities: .vulns}'
}

# Check if a command-line argument is provided
if [ $# -eq 1 ]; then
  # Read input from the file
  while read -r line; do
    process_input "$line"
  done < "$1"
else
  # Read input from stdin
  while read -r line; do
    process_input "$line"
  done
fi

