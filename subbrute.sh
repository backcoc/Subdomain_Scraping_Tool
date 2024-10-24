
#!/bin/bash

# Subdomain Brute-Forcing Tool

TARGET_DOMAIN=$1
WORDLIST="wordlist.txt"
RESOLVERS="resolvers.txt"
OUTPUT_FILE="bruteforce_$TARGET_DOMAIN.txt"

# Step 1: Use amass brute-force mode
echo "[*] Running amass for brute-forcing subdomains..."
amass enum -brute -d $TARGET_DOMAIN -w $WORDLIST -rf $RESOLVERS -o amass_bruteforce.txt

# Step 2: Use shuffleDNS for brute-forcing
echo "[*] Running shuffleDNS..."
shuffledns -d $TARGET_DOMAIN -w $WORDLIST -r $RESOLVERS -o shuffledns_bruteforce.txt

# Merge results
cat amass_bruteforce.txt shuffledns_bruteforce.txt | sort -u > $OUTPUT_FILE
echo "[*] Subdomain brute-forcing complete! Results saved to $OUTPUT_FILE."
