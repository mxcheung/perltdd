#!/bin/bash
yum update -y
yum install -y httpd 
systemctl start httpd
systemctl enable httpd
chkconfig httpd on
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;
echo "<html><body>My first EC2 instance</body></html>" > /var/www/html/index.html