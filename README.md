# Shodan-InternetDB-Vuln-Checker

Shodan-InternetDB-Vuln-Checker is a command-line tool that uses Shodan's InternetDB API to check IP addresses for potential vulnerabilities. The script processes input from files or standard input and queries the API for vulnerabilities, and then filters and outputs the results containing vulnerabilities. 

# Features

- File or Tool chain input
- Ouputs results that have CVE's

# Requires

- jq

```sh
sudo apt install jq
```

# Installation

- Copy the script or clone the repository

# Usage

### File Input

```console
cat ips.txt | ./shodan-idb.sh
``` 

```console
./shodan-idb.sh ips.txt
``` 
### Tool Chain

```console
echo example.com | dnsx -silent -resp-only | sort -u | ./shodan-idb.sh
``` 

```console
echo example.com | subfinder -silent | dnsx -silent -resp-only | sort -u | ./shodan-idb.sh

{
  "hostnames": [
    "example.com",
    "api.example.com"
  ],
  "ip": "10.10.10.10",
  "ports": [
    80,
    443
  ],
  "vulnerabilities": [
    "CVE-2022-12345",
    "CVE-2023-54321"
  ]
}
```
