AWS user data (bootup script) example. 
To be copied as is after the line into AWS User data (bootup script) in order to start an Apache HTTP server with simple Hello world webpage
-----------
#!/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello World from $(hostname -f)" > /var/www/html/index.html
