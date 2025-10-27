FROM n8nio/n8n:latest

USER root
RUN apt-get update && apt-get install -y chromium chromium-driver

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV GENERIC_TIMEZONE=Asia/Kolkata

CMD ["n8n", "start"]
