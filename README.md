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

#License

Copyright 2015, Rajeevan

BanTorRelays is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

BanTorRelays is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with OsmPoisPbj. If not, see http://www.gnu.org/licenses/.
