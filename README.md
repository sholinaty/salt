# salt
collection of useful salt scripts

## enable_ip_forwarding_and_masquerade.sls
this script is part of a VPN deployment.  it will enable IP Forwarding, and IP Masquerade in the primary network interface on your server.
especially useful if you are using OpenVPN Cloud as an ingress into your office network.

## deploy_openVPN_cloud_connector.sls
This copies the Ubuntu 20.04 install steps (via a shell script) over to the target.
then it will install, and configure, the connector with the provided key (you need to add this)
* Split into 2 stages, so that the core installation can be a common script, and only the specific implementation needs to be updated to include your vpn connector key.

## openvpn-config/deploy_connector_ubunto20.04.sh
This is the script that is copied and ran on the target server, to automate deployment of an OpenVPN Cloud connector.
