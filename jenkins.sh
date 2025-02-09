#Switch to root
sudo -i

#Update the system
yum update -y

#Install Java 17
amazon-linux-extras enable corretto11
yum install -y java-17-amazon-corretto

#Install Jenkins
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

yum upgrade -y
yum install jenkins -y

systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins

echo "Jenkins initial password:"
cat /var/lib/jenkins/secrets/initialAdminPassword