#!/bin/bash

# Altera os valores para os DNS

# Pega os valores dos DNS atuais
dns_1=$(cat /etc/resolv.conf | grep nameserver | head -1 | awk '{print $2}')
dns_2=$(cat /etc/resolv.conf | grep nameserver | tail -1 | awk '{print $2}')

# Altera os valores dos DNS
echo "nameserver ${1}" >> /etc/resolv.conf
echo "nameserver ${2}" >> /etc/resolv.conf

# Reinicia o serviço de rede
systemctl restart networking
