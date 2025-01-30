# DeepSeek Local Setup with Ollama and ChatGPT Web Interface

This repository provides a guide and configuration to set up the **DeepSeek** large language model (LLM) locally on your machine using Docker. It includes two primary services:  
1. **Ollama**: For running and managing the DeepSeek model.  
2. **ChatGPT Web Interface**: A frontend for interacting with DeepSeek via a web-based chatbot.

## 🚀 Features
- Run **DeepSeek** locally without relying on the cloud.
- GPU acceleration support using NVIDIA GPUs.
- Interactive **web-based chat interface** for communication with the model.
- Easy Docker Compose setup.

---

## 🛠️ Prerequisites

- **Docker** and **Docker Compose** installed on your machine.  
  [Install Docker](https://docs.docker.com/get-docker/) | [Install Docker Compose](https://docs.docker.com/compose/install/)

- **NVIDIA GPU** with drivers installed (optional, but recommended).  
  [Install NVIDIA Drivers](https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html)

- **NVIDIA Container Toolkit** for GPU access in Docker.  
  [Install NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)

---

## 📦 Services Overview

### 1. **Ollama**
- Manages the DeepSeek model.
- Stores models in a persistent volume (`ollama:/ollama/models`).

### 2. **ChatGPT Web Interface**
- A web-based interface for chatting with DeepSeek.
- Configured to use the `deepseek-r1:1.5b` model by default.

---

## 🛠️ Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/aurcode/docker.git
cd docker/ollamma
docker-compose up --build
```

Check [localhost:3000](localhost:3000)

## Reference

- [ollama deepseek](https://ollama.com/library/deepseek-r1)
- [dockerhub ollama](https://hub.docker.com/r/ollama/ollama)