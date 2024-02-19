echo -e "\033[0;33m========= Removing iptables allowing forwarding the installing commands for nmap =========\033[0;0m"

iptables -D FORWARD -d 8.8.8.8 -j ACCEPT
iptables -D FORWARD -p tcp -m multiport --dports 80,443 -j ACCEPT
iptables -D FORWARD -p udp --dport 53 -j ACCEPT
iptables -D FORWARD -p tcp -m multiport --sports 80,443 -j ACCEPT
iptables -D FORWARD -p udp --sport 53 -j ACCEPT

echo -e "\033[0;32m========= Done =========\033[0;0m"

