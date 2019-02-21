FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install openvpn easy-rsa dnsutils iptables wget -y

# initiate config
RUN make-cadir ~/openvpn-ca
RUN wget -O ~/openvpn-ca/vars https://raw.githubusercontent.com/gversmee/openvpn-server/master/config_files/vars
RUN wget -O /etc/openvpn/server.conf https://raw.githubusercontent.com/gversmee/openvpn-server/master/config_files/server.conf
RUN wget -O /etc/sysctl.conf https://raw.githubusercontent.com/gversmee/openvpn-server/master/config_files/sysctl.conf

# create client base config
RUN mkdir -p ~/clients/files
RUN chmod 700 ~/clients/files
RUN wget -O ~/clients/base.conf https://raw.githubusercontent.com/gversmee/openvpn-server/master/config_files/base.conf
RUN wget -O ~/clients/gen_config.sh https://raw.githubusercontent.com/gversmee/openvpn-server/master/config_files/gen_config.sh
RUN chmod 700 ~/clients/gen_config.sh

EXPOSE 443
ADD ./bin /usr/local/bin
RUN chmod +x /usr/local/bin/*
CMD ["openvpn_run"]