#!/bin/bash

# JavaScript Link Scraping Tool

TARGET_DOMAIN=$1
OUTPUT_FILE="js_links_$TARGET_DOMAIN.txt"

# Step 1: Use gospider for crawling the target site and finding JS files
echo "[*] Running gospider to find JS files..."
gospider -s "https://$TARGET_DOMAIN" -o gospider_output.txt

# Step 2: Use hakrawler to discover links from JS files
echo "[*] Running hakrawler to scrape JS links..."
cat gospider_output.txt | hakrawler -js -o hakrawler_js_links.txt

# Step 3: Use Burp Suite to analyze JS links (if necessary)

# Step 4: Scraping JS links manually (optional)
# Example: Extracting links from JavaScript files using regex
grep -Eo '(http|https)://[a-zA-Z0-9./?=_-]*' hakrawler_js_links.txt > $OUTPUT_FILE

echo "[*] JS link scraping complete! Results saved to $OUTPUT_FILE."
