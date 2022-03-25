curl -O https://cloud-backend.openvpn.com/cvpn/api/v1/scripts/VWJ1bnR1IDIwLjA0/network/ubuntu_20_04.sh
chmod +x ubuntu_20_04.sh
printf "y" | ./ubuntu_20_04.sh
printf "$1" |  openvpn-connector-setup
