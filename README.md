# eap_parrot - Extensible Authentication Protocol Parrot

Repeats, without thought or understanding, EAP(OL) packets on the wire.

# Purpose

EAP Parrot was born due to a frustration with the modem and router
combo box provided by AT&T's fiber service.

The built-in router has very small tables to manage the network traffic
from the local area network (LAN).  And if one has a need for more than
40 IP addresses on their LAN, limitations with the router will be hit
even if one decides to utilize static IPv4 and IPv6 addresses.

Connectivity will be impacted by not being reachable by the outside
world, or simply not being able to get a DHCP response from the router
even though one has plenty of room in their configuration.

Let alone that AT&T has been known to change firewall rules on the
router.
ie: Activating rules that cause IPv6 not to function as expected.

Morton Jonuschat wrote the original eap_parrot service.
- https://github.com/mjonuschat
   
# See Also

### Original Project
https://github.com/mjonuschat/eap_parrot

### Source Code
https://github.com/cloudbsdorg/eap_parrot

### Using an OpenBSD Router with AT&T U-Verse
https://jcs.org/2019/03/21/uverse

# License
EAP Parrot is licensed with the GNU Public License Version 3.