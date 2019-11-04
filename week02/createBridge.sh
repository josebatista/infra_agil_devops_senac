!/bin/sh

#Criando bridge
brctl addbr senai-br

#Criando novos cabos
ip link add veth-green type veth peer name veth-green-br
ip link add veth-yellow type veth peer name veth-yellow-br

#Ligando cabos nas namespaces
ip link set veth-green netns green
ip link set veth-yellow netns yellow

#Ligando cabos na bridge
ip link set veth-green-br master senai-br
ip link set veth-green-br up

ip link set veth-yellow-br master senai-br
ip link set veth-yellow up

#Atribuindo Ip e levantando
ip -n green addr add 192.168.15.10/24 dev veth-green
ip -n green link set veth-green up

ip -n yellow addr add 192.168.15.11/24 dev veth-yellow
ip -n yellow link set veth-yellow up

#Linux Brigde
ip addr add 192.168.15.5/24 dev senai-br

#Trafego namespace para fora
# ip netns exec green ip route add default via 192.168.15.5 dev veth-green
# ip netns exec yellow ip route add default via 192.168.15.5 dev veth-yellow

#Trafego namespace para fora NAT
# iptables -t nat -A POSTROUTING -s 192.168.15.0/24 -j MASQUERADE

#Trafego de fora para dentro
# iptables -t nat -A POSTROUTING --dport 80 --to-destination 192.168.15.13 -j DNAT

#Limpando LAB
# ip netns del green
# ip netns del yellow
# ip link del senai-br
# iptables -t nat -D POSTROUTING 1


