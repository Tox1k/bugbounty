#!/bin/bash

echo "[*Starting amass enumeration*]"
amass enum -df scope --config /home/kali/recon/config.ini -brute -o tmp_amass_latest -active

echo "[*Sanitize entries (artstation excluded)*]"
#sanitize domains and append to domains
cat tmp_amass_latest | grep -v "artstation.com" | isdom | anew domains
#remove tmp scan
rm tmp_amass_latest

echo "[*Running scan with aquatone*]"

#exclude artstation domains
cat domains | aquatone -out latest_scan/
