# Lab Information

My lab for developing these scripts was setup as follows.

## Servers
ca01.lab03.byitkc.net (Subordinate Issuing Certificate Authority) [Windows Server 2019 Standard w/ GUI]
db01.lab03.byitkc.net (Database Server #1) [Windows Server 2019 Standard]
dc01.lab03.byitkc.net (Domain Controller #1) [Windows Server 2019 Standard]
dc02.lab03.byitkc.net (Domain Controller #2) [Windows Server 2019 Standard]
dns01.lab03.byitkc.net (DNS Proxy #1) [Fedora 34]
dns02.lab03.byitkc.net (DNS Proxy #2) [Fedora 34]
fs01.lab03.byitkc.net (File Server #1) [Windows Server 2019 Standard]
mgmt.lab03.byitkc.net (Management Server) [Windows Server 2019 Standard w/ GUI]
rca01.lab03.byitkc.net (Root Offline Standalone Certificate Authority) [Windows Server 2019 Standard w/ GUI]

## Network

- Network ID: 172.17.3.0/24
- Gateway: 172.17.3.1
- Broadcast: 172.17.3.255

- 172.17.3.1 - firewall01 (Gateway) [Cisco FTDv]
- 172.17.3.11 - dc01.lab03.byitkc.net
- 172.17.3.12 - dc02.lab03.byitkc.net
- 172.17.3.13 - dns01.lab03.byitkc.net
- 172.17.3.14 - dns02.lab03.byitkc.net
- 172.17.3.15 - fs01.lab03.byitkc.net
- 172.17.3.
