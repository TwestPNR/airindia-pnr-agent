# Use official n8n image (Debian-based, supports apt-get)
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install Chromium & driver for browser automation
RUN apt-get update && \
    apt-get install -y chromium chromium-driver && \
    rm -rf /var/lib/apt/lists/*

# Environment variables for n8n basic auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword

# Default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
