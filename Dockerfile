# Use a stable version of Node
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
RUN apk add --no-cache chromium chromium-chromedriver

# Install a stable version of n8n (not latest)
RUN npm install -g n8n@1.66.0

# Expose the default port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
