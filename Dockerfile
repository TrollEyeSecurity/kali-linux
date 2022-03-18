FROM kalilinux/kali-rolling
LABEL maintainer="avery.rozar@trolleyesecurity.com"
COPY google-chrome/linux_signing_key.pub /
RUN apt update && \
    apt dist-upgrade -y && \
    apt autoremove -y && \
    apt install gnupg2 curl nfs-common mariadb-client exploitdb nmap dnsutils snmp snmpcheck metasploit-framework \
    cisco-auditing-tool cisco-torch sqlninja sqlmap nikto john hydra wordlists dirb vim nano ncat responder \
    iproute2 python3-pip crackmapexec firebird3.0-utils -y && \
    apt-key add linux_signing_key.pub && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | tee /etc/apt/sources.list.d/google-chrome.list && \
    apt update && \
    apt install google-chrome-stable -y && \
    git clone -q https://github.com/SecureAuthCorp/impacket.git && \
    python3 -m pip install impacket/ && \
    python3 -m pip install netifaces
