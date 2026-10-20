#!/bin/bash
# Update and install Docker
yum update -y
yum install -y docker

# Start and enable Docker service
systemctl start docker
systemctl enable docker

# Add the default user to the docker group (optional, for later SSH access)
usermod -aG docker ec2-user

# Run Nginx (mapping host port 8080 to container port 80)
docker run -p 8080:80 -d nginx