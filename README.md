# trapezius
Simple Go application for raspi-k8s

## Usage
### 1. Build docker image

```
docker build -t trapezius .
```

### 2. Push to your Docker Repository

```
docker push <YOUR_DOCKERHUB_ID>/trapezius
```

### 3. Kubectl apply

```
kubectrl apply -f kubernetes-deploy.yaml
```
