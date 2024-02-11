FROM kalilinux/kali-rolling
LABEL maintainer="avery.rozar@trolleyesecurity.com"
RUN apt update && \
    apt dist-upgrade -y && \
    apt autoremove -y && \
    apt install rsh-redone-client gnupg2 curl nfs-common mariadb-client exploitdb nmap dnsutils snmp snmpcheck metasploit-framework \
    cisco-auditing-tool cisco-torch sqlninja sqlmap nikto john hydra wordlists dirb vim nano ncat responder \
    iproute2 python3-pip crackmapexec firebird3.0-utils gobuster wpscan smbmap -y && \
    wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
    echo "deb [arch=$(dpkg --print-architecture)] https://dl.google.com/linux/chrome/deb/ stable  main" | tee /etc/apt/sources.list.d/google-chrome.list && \
    apt update && \
    apt install google-chrome-stable -y && \
    git clone -q https://github.com/SecureAuthCorp/impacket.git && \
    python3 -m pip install netifaces mitm6 && \
    gem install evil-winrm
