#!/bin/bash
KEY_DIR=/etc/openvpn
cat <(echo -e 'client
dev tun
proto tcp
resolv-retry infinite
nobind
user nobody
group nogroup
persist-key
persist-tun
remote-cert-tls server
cipher AES-128-CBC
auth SHA256
verb 3
key-direction 1\n
<ca>') \
${KEY_DIR}/ca.crt \
<(echo -e '</ca>\n<cert>') \
${KEY_DIR}/client.crt \
<(echo -e '</cert>\n<key>') \
${KEY_DIR}/client.key \
<(echo -e '</key>\n<tls-auth>') \
${KEY_DIR}/vpn.key \
<(echo -e '</tls-auth>') \
> ~/client/files/client.ovpn
