copy_openvpn_deploy:
  file.managed:
    - name: /tmp/deploy_connector.sh
    - source: salt://openvpn-config/deploy_connector.sh
    - makedirs: Truei
openvpn_deploy:
  cmd.run:
    - name: sh /tmp/deploy_connector.sh _____PUT_YOUR_OPENVPN_CONNECTOR_TOKEN_HERE_______
