# open the minecraft docker port
sudo firewall-cmd --zone=FedoraServer --permanent --add-port 25565/tcp
sudo firewall-cmd --zone=FedoraServer --permanent --add-port 25565/udp

sudo firewall-cmd --reload

sudo firewall-cmd --list-all