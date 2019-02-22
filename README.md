# openvpn-server

### How to install:
#### Mac OS / Linux

``` bash
brew tap gversmee/open-vpn-server
brew install open-vpn-server
```

### How to start my server:
``` bash
vpn-server-start -i path/to/my/ssh/key -p port(defaut=443) -o output/of/the/config/file publicDNSofmyremoteserver
vpn-server-stop -i path/to/my/ssh/key publicDNSofmyremoteserver
```





From: https://medium.com/teendevs/setting-up-an-openvpn-server-on-google-compute-engine-9ff760d775d9

``` bash
gcloud compute --project=openvpn-231822 instances create instance-1 --zone=us-east1-b --machine-type=f1-micro --subnet=default --network-tier=PREMIUM --can-ip-forward --maintenance-policy=MIGRATE --service-account=946316501079-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=https-server --image=cos-stable-72-11316-136-0 --image-project=cos-cloud --boot-disk-size=10GB --boot-disk-type=pd-standard --boot-disk-device-name=instance-1
```
