[![GitHub (pre-)release](https://img.shields.io/github/release-pre/gversmee/openvpn-server.svg)](https://github.com/gversmee/openvpn-server/releases/latest)
![GitHub](https://img.shields.io/github/license/gversmee/openvpn-server.svg)
[![DOI](https://zenodo.org/badge/171182307.svg)](https://zenodo.org/badge/latestdoi/171182307)

# openvpn-server

This software is intended to create an openvpn server on a remote machine and sends you the client config file. It allows you to mask your IP address.
It requires:
- SSH access to a remote machine (e.g aws ec2 or google cloud vm), with a port open (the software uses by default port 443)
- Docker installed and docker daemon running on that machine
- 25Mb of disk space for the Docker image

### How to install:
#### Mac OS / Linux

``` bash
brew tap gversmee/openvpn-server
brew install openvpn-server
```

### How to start my server:
``` bash
vpn-server-start -i path/to/my/ssh/key -p port(defaut=443) -o output/of/the/config/file publicDNSofmyremoteserver
```

This will generate an openvpn client config file. Go to step 10 of that article to see how to use this config file.
https://medium.com/teendevs/setting-up-an-openvpn-server-on-google-compute-engine-9ff760d775d9


### How to stop my server:
``` bash
vpn-server-stop -i path/to/my/ssh/key publicDNSofmyremoteserver
```
