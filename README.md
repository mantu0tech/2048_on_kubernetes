# 2048 Web Game on Kubernetes 🎮🚀

A modern, containerized version of the classic 2048 puzzle game built with HTML, CSS, and JavaScript. This project supports a dynamic dark/light mode switch and a restart button, and is fully deployable on Kubernetes via Docker and Terraform.

## ✨ Features

- Fully functional 2048 game in the browser
- Dark and light themes with a toggle
- Restart button to reset the board and score
- Responsive UI with improved tile styling
- Deployable on Kubernetes (via `deployment.yaml`)
- Infrastructure as Code with Terraform (EKS setup)

## 🧱 Project Structure

2048_on_kubernetes/
│
├── game/ # Frontend game files (HTML, CSS, JS)
├── Dockerfile # Containerizes the game
├── deployment.yaml # Kubernetes Deployment manifest
├── service.yaml # Kubernetes Service to expose app
├── terraform/ # Terraform scripts for AWS EKS
└── README.md # This file



### 1. Build and Push Docker Image

docker build -t your-dockerhub-username/2048-game .
docker push your-dockerhub-username/2048-game


### 2. Deploy to Kubernetes

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

🌐 Accessing the Game
If using a NodePort or LoadBalancer service, open the game in your browser using:

php-template
Copy
Edit
http://<EXTERNAL-IP>:<PORT>
