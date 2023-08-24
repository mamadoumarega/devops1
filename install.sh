#!/bin/bash

echo "Début configuration réseau"
ansible-playbook -i inventory.ini playbook/dhcp_dns/install_dnsmasq.yml
ansible-playbook -i inventory.ini playbook/dhcp_dns/configure_resolv_conf.yml
ansible-playbook -i inventory.ini playbook/dhcp_dns/configure_dhcp.yml
ansible-playbook -i inventory.ini playbook/dhcp_dns/configure_dns.yml
echo "Fin configuration réseau"

echo "Début installations des services"
ansible-playbook -i inventory.ini playbook/apache/install_apache.yml
ansible-playbook -i inventory.ini playbook/haproxy/install_haproxy.yml
echo "Fin installations des services"

echo "Installation des wordpress"
ansible-playbook -i inventory.ini playbook/wordpress/wordpress.yml
echo "Fin installation des wordpress"