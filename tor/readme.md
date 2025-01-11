# Tor Proxy with Docker

This repository provides a lightweight Tor proxy setup using a custom Docker image built on `alpine:latest`. The setup uses Docker Compose for easy management.

## Features
- Runs a Tor SOCKS proxy on port `9050`.
- Includes a control port on `9040` (optional for advanced use).
- Lightweight and customizable setup.

---

## Requirements
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

---

## How to Use

### 1. Clone the Repository
Clone the repository to your local machine:
```bash
git clone git@github.com:aurcode/docker.git
cd docker/tor
```

```
git clone https://github.com/aurcode/docker.git
cd docker/tor
```

### 2. Build and Run the Container
Run the following command to build the custom Tor proxy image and start the container:
```bash
docker-compose up -d
```

### 3. Verify the Setup
Test the Tor proxy by checking your IP via the Tor network:
```bash
curl --socks5 localhost:9050 https://check.torproject.org
```

If everything is working, you will see a message confirming that your IP address is part of the Tor network.

---

## File Overview
- **`Dockerfile`**: Defines the custom Docker image based on `alpine:latest` with Tor installed.
- **`torrc`**: Configuration file for Tor, specifying the SOCKS and Control ports.
- **`docker-compose.yml`**: Automates building and running the container.

---

## Customization

### Edit `torrc`
You can modify the `torrc` file to customize the Tor configuration, such as enabling logging or setting exit node preferences.

### Rebuild the Container
If you make changes to the `Dockerfile` or `torrc`, rebuild the image:
```bash
docker-compose up --build -d
```

---

## Using the Tor Proxy with Telegram

To configure Telegram to use the Tor proxy:

### Step 1: Open Telegram Settings
1. Open the Telegram app.
2. Go to **Settings** > **Data and Storage** > **Proxy Settings**.

### Step 2: Add a SOCKS Proxy
1. Click **Add Proxy** or **Use Proxy**.
2. Select **SOCKS5** as the proxy type.
3. Enter the following details:
   - **Server**: `127.0.0.1`
   - **Port**: `9050`
   - Leave the **Username** and **Password** fields blank.
4. Save the settings.

### Step 3: Test the Proxy
Once the proxy is enabled, Telegram will route its traffic through the Tor network. You can verify this by ensuring Telegram connects successfully while the Docker container is running.

---

## Troubleshooting
- Ensure Docker and Docker Compose are properly installed.
- Verify the container is running with `docker ps`.
- Check for errors in the logs using `docker-compose logs`.
- Ensure Telegram is configured to use the proxy server correctly.

---

Enjoy a secure browsing experience on Telegram using the Tor network! 🚀

---

Let me know if there's anything else you'd like to add!