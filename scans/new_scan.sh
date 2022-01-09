#!/bin/bash

echo "" >> domains #create domains file if not existing

echo "[*Starting amass enumeration*]"
amass enum -df scope --config /home/kali/recon/config.ini -brute -o tmp_amass_latest -active

echo "[*New entries (artstation excluded)*]"
#sanitize domains and append to domains
cat tmp_amass_latest | grep -v "artstation.com"  | isdom | anew domains > new_domains
#remove tmp scan
rm tmp_amass_latest
#print new discovered domains
cat new_domains


echo "[*Running new scan with aquatone*]"

#exclude artstation domains
cat new_domains | aquatone -out latest_scan_new/
