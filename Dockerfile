# Use lightweight Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install required dependencies (Chromium + driver for automation)
RUN apk add --no-cache chromium chromium-chromedriver

# Install n8n globally
RUN npm install -g n8n

# Expose default n8n port
EXPOSE 5678

# Start n8n automatically
CMD ["n8n", "start"]
