

# 📜 2. deployment.sh


```bash
#!/bin/bash

# Update system
sudo yum update -y

# Install Docker
sudo yum install docker -y

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

# Run Nginx container
docker run -d -p 80:80 nginx

echo "Application deployed successfully!"
