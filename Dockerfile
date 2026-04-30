FROM n8nio/n8n

USER root

# Install TinyFish custom node
RUN npm install -g n8n-nodes-tinyfish

# Set custom extensions path
ENV N8N_CUSTOM_EXTENSIONS=/usr/local/lib/node_modules

USER node
