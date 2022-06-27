# Hands-on-Project_1
Bash scripts, Network design and Hardening, Cloud Network security, create Ansible server and Containers.
The Linux folder contains bash scripts.
Log_analysis.sh, script.sh, roulette_dealer_finder_by_time.sh and roulette_dealer_finder_by_time_and_game.sh are scripts used to extract row and line of data, to replace text strings within log files.
sys_info.sh, testscript.sh and system are scripts used to set specific conditions "if" to run with variables "$".
Within the diagram folder, the Network Diagram shows a bus topology with a wired and wireless connections. 
It's a sample diagram comprise of a LAN where computers are connected to the switches and WAN using a router and a Wireless Access Point. Since the Network is connected to the internet, it is hardened with two firewalls to protect the filter inbound and outbound traffic and the Load Balancers are distributing the traffic within the router and the Server, then creating a demilitarized zone.
The Cloud security diagram demonstrates the Network architecture and the security implementation within a Cloud ressource group. This is to secure and filter all traffic from our local computers and the Internet to the Cloud environment and vice-versa. The firewall and the Load Balancer have each one the same function as on a physical network. Web-1 and Web-2 are virtual machines that comprise a back-end pool for the Ansible VM, and host the DVWA website's Container. The peering between RedTeamNet and ELKnet allows traffic to flow securely from VMs inside one network to the other via SSH, and the two networks share the same Network Security Group .
The ansible folder contains YAML files which are installation files for the JumpBoxProvisioner (Ansible), the DVWA Containers and the Elk-Server.
filebeat-playbook.yml installs the Ansible server with the command ansible-playbook.
metricbeat-playbook.yml installs the container for Web-1 and Web-2 with the command ansible-playbook.
copy-filebeat.yml and copy-metricbeat.yml are respectively used to copy the configuration files, filebeat-config.yml and metricbeat-config.yml from the local machine (ansible) to Web-1 and Web-2.
install-elk.yml installs the container for the Elk-Server.
