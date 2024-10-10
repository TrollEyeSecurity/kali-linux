FROM kalilinux/kali-rolling
LABEL maintainer="avery.rozar@trolleyesecurity.com"
RUN apt update && \
#    apt dist-upgrade -y && \
#    apt autoremove -y && \
    apt install rsh-redone-client gnupg2 curl nfs-common mariadb-client exploitdb nmap dnsutils snmp snmpcheck metasploit-framework \
    cisco-auditing-tool cisco-torch sqlninja sqlmap nikto john hydra wordlists dirb vim nano ncat responder \
    iproute2 pipx crackmapexec firebird3.0-utils gobuster wpscan smbmap python3-impacket impacket-scripts bloodhound python3-netifaces python3-dev chromium -y && \
    git clone -q https://github.com/SecureAuthCorp/impacket.git && \
    PIPX_HOME=/opt/pipx PIPX_BIN_DIR=/usr/local/bin pipx install mitm6 && \
    gem install evil-winrm
