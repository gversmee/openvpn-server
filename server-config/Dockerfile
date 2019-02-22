FROM alpine

RUN apk update && apk add openvpn openssl easy-rsa bash sed iptables bind-tools

ADD ./config-files /etc/openvpn/config-files
ADD ./bin /usr/local/bin

RUN chmod 700 /etc/openvpn/config-files/* /usr/local/bin/* && mkdir /etc/openvpn/config-files/client

WORKDIR /usr/share/easy-rsa

#https://github.com/OpenVPN/easy-rsa/issues/261
RUN /usr/share/easy-rsa/easyrsa init-pki \
&& sed -i '3d' /usr/share/easy-rsa/openssl-easyrsa.cnf

EXPOSE 443

CMD ["openvpn_run"]
