echo "setting up iptables to allow npings"

iptables -A OUTPUT -d 8.8.8.8 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT
iptables -A OUTPUT -p udp --dport 53 -j ACCEPT

iptables -I INPUT -p tcp --sport 80 -j ACCEPT
iptables -A INPUT -p tcp --sport 443 -j ACCEPT
iptables -I INPUT -p udp --sport 53 -j ACCEPT

echo "updating libraries"
apt update

echo "installing nmap"
apt install nmap -y

echo "installations finished"
nmap -v

echo "nmap installed"