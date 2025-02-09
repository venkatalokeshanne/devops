yum install docker -y
systemctl enable docker
systemctl start docker
systemctl status docker

# Permissions for Jenkins
chmod 666 /var/run/docker.sock