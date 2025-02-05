# Use the official n8n image as the base image.
FROM n8n/n8n:latest

# Switch to root user to install additional global packages.
USER root

# Install the pg library globally.
RUN npm install --global pg

# Switch back to the default non-root user (n8n usually runs as "node").
USER node

# (Optional) Expose the default n8n port.
EXPOSE 5678
