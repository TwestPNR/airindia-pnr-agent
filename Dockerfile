# Use the official n8n image (Alpine-based)
FROM n8nio/n8n:latest

# Switch to root user
USER root

# Install Chromium and its driver using apk (Alpine package manager)
RUN apk update && \
    apk add --no-cache chromium chromium-chromedriver

# Optional: Enable basic authentication for security
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword

# Expose n8n default port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
