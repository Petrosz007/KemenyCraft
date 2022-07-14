# Dynamic DNS

Install `ddclient`

    sudo apt update
    sudo apt install jq

Get your Clodflare API key from here: https://dash.cloudflare.com/profile/api-tokens
The Zone API ID is under your domain name > overview > scroll down and on the right

Edit `scripts/ddns/.ddns.example.sh`, fill out the variables. Rename the file to `.ddns.env` (remove the `.example` from the filename)

Run it with:

    ./scripts/ddns/ddns-update.sh


Add it to your crontab:

    crontab -e

Add this to the last line:

    */5 * * * * /home/petrosz/KemenyCraft/scripts/ddns/ddns-update.sh

This will make the script run every 5 minutes.

## Resources
1. https://www.publish0x.com/powersjo-technical-blog/dynamic-dns-with-cloudflare-xjonjjq
2. https://gist.github.com/benscabbia/a6b158974219f96ecb1e87b97890c5fe
