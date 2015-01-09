# BanTorRelays

I'm not particularly proud of creating this script, but we needed a quick fix solution to stop all TOR relays accessing our site.

# Require
- You have iptables setup and activly running
- curl library

# CONFIG
Modify the file to change your SERVER IP address and the PORT that relays accessing to generate the LIST of relays. 

# USAGE
Simply run this command as ROOT user

`sudo ./bantor.sh`

# More
You can read more about the relays list here: https://www.torproject.org/docs/faq-abuse.html.en#Bans
