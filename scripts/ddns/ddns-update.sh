#!/bin/bash
set -e              # Will exit the script of any line fails, won't run the following lines
set -o xtrace       # Will print the commands being executed


MY_PATH=`dirname "$0"`
$MY_PATH/ddns-variables.sh

# Need a cloudflare token with DNS Read and Edit rights on a DNS Zone
# Check if the token is working correctly
curl -X GET "https://api.cloudflare.com/client/v4/user/tokens/verify" \
     -H "Authorization: Bearer $TOKEN" \
     -H "Content-Type:application/json"

# Get the ID of the DNS record to update
DNS_ID=$(curl -X GET "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records?type=A&name=$SUBDOMAIN" \
     -H "Authorization: Bearer $TOKEN" \
     -H "Content-Type: application/json" | jq -r '.result[0].id')

echo DNS_ID: $DNS_ID

IP=$(curl ipinfo.io/ip)

echo IP: $IP

# Update the DNS Record
curl -X PUT "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$DNS_ID" \
     -H "Authorization: Bearer $TOKEN" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'"$SUBDOMAIN"'","content":"'"$IP"'","ttl":1,"proxied":false}'
