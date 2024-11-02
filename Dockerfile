FROM kalilinux/kali-rolling
LABEL maintainer="avery.rozar@trolleyesecurity.com"
RUN apt update && \
    apt dist-upgrade -y && \
    apt autoremove -y
# I have no idea why I have to build like this but if I don't, nmap fails:
# ┌──(root㉿e59068260af1)-[/]
# └─# nmap
# /usr/bin/nmap: 6: exec: /usr/lib/nmap/nmap: Operation not permitted
RUN apt install nmap rsh-redone-client gnupg2 curl nfs-common mariadb-client exploitdb dnsutils  \
    snmp snmpcheck metasploit-framework chromium vim nano ncat cisco-auditing-tool cisco-torch -y
RUN apt install sqlninja sqlmap nikto john hydra wordlists dirb responder iproute2 -y
RUN apt install mitm6 crackmapexec firebird3.0-utils gobuster wpscan smbmap python3-impacket  \
    impacket-scripts bloodhound python3-netifaces python3-dev evil-winrm -y
RUN git clone -q https://github.com/SecureAuthCorp/impacket.git
