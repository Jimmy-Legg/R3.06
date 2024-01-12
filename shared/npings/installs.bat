echo -e "\033[0;33m========= Setting up iptables to installing allow installing nmap =========\033[0;0m"

iptables -A OUTPUT -d 8.8.8.8 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT
iptables -A OUTPUT -p udp --dport 53 -j ACCEPT

iptables -I INPUT -p tcp --sport 80 -j ACCEPT
iptables -I INPUT -p udp --sport 53 -j ACCEPT
iptables -A INPUT -p tcp --sport 443 -j ACCEPT

echo -e "\033[0;32m========= Done =========\033[0;0m"

echo -e "\033[0;33m========= Updating libraries =========\033[0;0m"

apt update

echo -e "\033[0;32m========= Done =========\033[0;0m"

echo -e "\033[0;33m========= Installing nmap =========\033[0;0m"

apt install nmap -y

echo -e "\033[0;32m========= Done =========\033[0;0m"

echo -e "\033[0;33m========= Removing iptables that allowed installing nmap =========\033[0;0m"

#iptables -D OUTPUT -d 8.8.8.8 -j ACCEPT
#iptables -D OUTPUT -p tcp --dport 80 -j ACCEPT
#iptables -D OUTPUT -p tcp --dport 443 -j ACCEPT
#iptables -D OUTPUT -p udp --dport 53 -j ACCEPT

#iptables -D INPUT -p tcp --sport 80 -j ACCEPT
#iptables -D INPUT -p tcp --sport 443 -j ACCEPT
#iptables -D INPUT -p udp --sport 53 -j ACCEPT

echo -e "\033[0;32m========= Done =========\033[0;0m"

echo -e "\033[0;33m========= Removing iptables that allow forwarding the installing commands for nmap =========\033[0;0m"

iptables -D FORWARD -d 8.8.8.8 -j ACCEPT
iptables -D FORWARD -p tcp -m multiport --dports 80,443 -j ACCEPT
iptables -D FORWARD -p udp --dport 53 -j ACCEPT
iptables -D FORWARD -p tcp -m multiport --sports 80,443 -j ACCEPT
iptables -D FORWARD -p udp --sport 53 -j ACCEPT

echo -e "\033[0;32m========= Done =========\033[0;0m"