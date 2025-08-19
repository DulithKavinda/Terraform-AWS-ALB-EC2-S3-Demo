#!/bin/bash
apt update -y
apt install -y apache2

# Get the instance ID using the instance metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Install AWS CLI (optional)
apt install -y awscli

# Create a simple HTML page
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>Web Server 2</title>
  <style>
    body { font-family: Verdana, sans-serif; background-color: #fff0f5; text-align: center; }
    h1 { color: darkred; }
    h2 { color: blue; }
  </style>
</head>
<body>
  <h1>Welcome to Server 2</h1>
  <h2>Instance ID: <span style="color:blue">$INSTANCE_ID</span></h2>
  <p>This page is served by <b>EC2 in AZ us-east-1b</b>.</p>
</body>
</html>
EOF

systemctl start apache2
systemctl enable apache2
