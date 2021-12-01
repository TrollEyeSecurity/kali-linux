FROM kalilinux/kali-rolling
LABEL maintainer="avery.rozar@trolleyesecurity.com"
COPY google-chrome/linux_signing_key.pub /
RUN apt update && \
    apt dist-upgrade -y && \
    apt autoremove -y && \
    apt install gnupg2 curl nfs-common mariadb-client exploitdb nmap dnsutils snmp snmpcheck metasploit-framework cisco-auditing-tool cisco-torch sqlninja sqlmap nikto john hydra wordlists dirb vim responder -y && \
    apt-key add linux_signing_key.pub && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | tee /etc/apt/sources.list.d/google-chrome.list && \
    apt update && \
    apt install google-chrome-stable -y
