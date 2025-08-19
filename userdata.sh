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
  <title>Web Server 1</title>
  <style>
    body { font-family: Arial, sans-serif; background-color: #f0f8ff; text-align: center; }
    h1 { color: darkblue; }
    h2 { color: green; }
  </style>
</head>
<body>
  <h1>Welcome to Server 1</h1>
  <h2>Instance ID: <span style="color:green">$INSTANCE_ID</span></h2>
  <p>This page is served by <b>EC2 in AZ us-east-1a</b>.</p>
</body>
</html>
EOF

systemctl start apache2
systemctl enable apache2
