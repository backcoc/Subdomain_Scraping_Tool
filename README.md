# Subdomain and JS Link Discovery Tools

This repository provides three powerful tools for subdomain discovery and brute-forcing, as well as scraping JavaScript links from a target domain. These tools utilize a combination of well-known open-source tools such as `amass`, `subfinder`, `gospider`, `shodan`, and more to gather subdomain information and analyze JavaScript links.

## Tools Overview

1. **Subdomain Scraping Tool**  
   This tool scrapes subdomains of a target domain using multiple sources, including:
   - `amass`
   - `subfinder`
   - `shodan`
   - `github-subdomains.py`

2. **Subdomain Brute-Forcing Tool**  
   This tool performs brute-forcing on a target domain to find subdomains using:
   - `amass` brute-force
   - `shuffleDNS`

3. **JavaScript Link Scraping Tool**  
   This tool extracts JavaScript files and links from the target domain using:
   - `gospider`
   - `hakrawler`

---

## Installation and Prerequisites

### Tools Required
Make sure to install the following tools before using the scripts:
- `amass`: Subdomain enumeration tool. [Install guide](https://github.com/OWASP/Amass).
- `subfinder`: Subdomain discovery tool. [Install guide](https://github.com/projectdiscovery/subfinder).
- `shodan`: Shodan command-line interface for querying the Shodan database. [Install guide](https://cli.shodan.io/).
- `gospider`: Fast web spider written in Go. [Install guide](https://github.com/jaeles-project/gospider).
- `hakrawler`: Web crawler to find JS files and other information. [Install guide](https://github.com/hakluke/hakrawler).
- `shuffleDNS`: Fast subdomain brute-forcing tool. [Install guide](https://github.com/projectdiscovery/shuffledns).
- `github-subdomains.py`: Python script for scraping subdomains from GitHub.

Install the tools using the following commands:

```bash
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
go install -v github.com/OWASP/Amass/v3/...@master
