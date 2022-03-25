setup:
  pkg.installed:
    - pkgs:
      - iptables
      - iptables-persistent
enable-masquerade:
  cmd.run:
    - name: iptables -t nat -A POSTROUTING -o $(ip -o link show | sed -rn '/^[0-9]+: en/{s/.: ([^:]*):.*/\1/p}') -j MASQUERADE
enable-ip-forward:
  cmd.run:
    - name: sysctl -w net.ipv4.ip_forward=1
save-iptables:
  cmd.run:
    - name: iptables-save > /etc/iptables/rules.v4
