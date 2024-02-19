echo -e "\033[0;33m========= Adding iptables allowing forwarding the installing commands for nmap =========\033[0;0m"

iptables -A FORWARD -d 8.8.8.8 -j ACCEPT
iptables -A FORWARD -p tcp -m multiport --dports 80,443 -j ACCEPT
iptables -A FORWARD -p udp --dport 53 -j ACCEPT
iptables -A FORWARD -p tcp -m multiport --sports 80,443 -j ACCEPT
iptables -A FORWARD -p udp --sport 53 -j ACCEPT

echo -e "\033[0;32m========= Done =========\033[0;0m"