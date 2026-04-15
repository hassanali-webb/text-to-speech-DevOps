# 🗣️ Text to Speech Converter - DevOps Showcase

A modern, responsive Web Application that converts text into speech using the Web Speech API. This project serves as a comprehensive demonstration of professional DevOps practices, including Containerization, CI/CD, Infrastructure as Code (IaC), and Orchestration.

---

## 🚀 Features

- **Real-time Conversion**: Seamlessly convert text to speech with a single click.
- **Multiple Voices**: Integration with browser-supported voices.
- **Responsive UI**: Premium design with a sleek, user-friendly interface.
- **Micro-animations**: Enhanced UX with smooth transitions and hover effects.

---

## 🛠️ Tech Stack

- **Frontend**: HTML5, CSS3 (Vanilla), JavaScript (Vanilla)
- **Runtime**: Web Speech API
- **Web Server**: Nginx (Alpine)
- **Containerization**: Docker
- **Orchestration**: Kubernetes (Amazon EKS)
- **IaC**: Terraform
- **CI/CD**: GitHub Actions
- **Cloud**: AWS (ALB, IAM)

---

## 📈 DevOps Practices Applied

This repository implements industry-standard DevOps methodologies:

### 1. Infrastructure as Code (IaC)
Managed via **Terraform**, providing a reproducible and stateful infrastructure setup.
- **EKS Cluster**: Provisioned on AWS for production-grade orchestration.
- **Provider-based configuration**: Strategic management of AWS resources.

### 2. Containerization
The application is containerized using **Docker** with a multi-stage-like approach on `nginx:alpine` to ensure:
- Minimal image size (<50MB).
- Fast deployment cycles.
- Consistency across Dev/Staging/Prod environments.

### 3. CI/CD Pipeline
Automated via **GitHub Actions** (`.github/workflows/deploy.yaml`):
- **Build**: Automated Docker image building on every push to `main`.
- **Registry**: Images are pushed to **Docker Hub** with `latest` tagging.
- **Secrets Management**: Secure handling of credentials using GitHub Secrets.

### 4. Orchestration & Scalability
Deployed on **Kubernetes (K8s)** with high availability in mind:
- **Deployment**: Configured for 2 replicas with rolling updates.
- **Service**: Exposed via `NodePort` for internal cluster communication.
- **Ingress (ALB)**: Managed by the **AWS Load Balancer Controller** to provide path-based routing and SSL termination.

---

## 🏁 Getting Started

### Prerequisites
- [Docker](https://www.docker.com/)
- [Terraform](https://www.terraform.io/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [AWS CLI](https://aws.amazon.com/cli/)

### Local Development (Direct)
Simply open `index.html` in your browser.

### Running with Docker
```bash
# Build the image
docker build -t text-to-speech .

# Run the container
docker run -p 8080:80 text-to-speech
```
Access the app at `http://localhost:8080`.

---

## 🚢 Deployment (Cloud)

### 1. Provision Infrastructure
```bash
cd terraform
terraform init
terraform apply
```

### 2. Deploy to Kubernetes
```bash
kubectl apply -f k8s/manifest/
```

### 3. Verify Deployment
```bash
kubectl get ingress tts-ingress
```

---

## 📂 Project Structure

```text
├── .github/workflows/  # CI/CD Pipeline definitions
├── k8s/manifest/       # Kubernetes manifests (Deployment, Service, Ingress)
├── terraform/          # Infrastructure as Code
├── images/             # UI assets
├── dockerfile          # Container specification
├── index.html          # Main application entry
├── script.js           # Core logic (Speech Synthesis)
└── style.css           # Premium styling
```

---

## 📄 License
This project is open-source and available under the [MIT License](LICENSE).
