# 🚀 Low-Cost Web Application Architecture (Testing Environment)

## 📌 Overview
This project demonstrates a cost-effective architecture to deploy a web application in a testing environment using AWS and Docker.

---

## 🏗️ Architecture

User → Internet → Security Group → EC2 → Docker → Web Application

- EC2 (t2.micro) used for hosting
- Docker used for containerization
- Security Group allows HTTP (80) and SSH (22)
- EBS used for storage

---

## ⚙️ Deployment Steps

### 1. Launch EC2 Instance
- AMI: Amazon Linux / Ubuntu
- Instance Type: t2.micro
- Open Ports: 22, 80

### 2. Install Docker

```bash
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker

### 3. Run Application
docker run -d -p 80:80 nginx

### 4. Access Application
http://<EC2-Public-IP>

## 🔍 Testing & Verification

- Verified EC2 instance is running
- Installed Docker successfully
- Deployed Nginx container
- Verified application via public IP in browser

## 💡 Optimization

This architecture is designed to minimize cost by using a single EC2 instance without load balancers or auto scaling, making it ideal for testing environments.
