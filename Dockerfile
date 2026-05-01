FROM n8nio/n8n

USER root

# Install TinyFish inside n8n custom folder (THIS IS THE KEY)
RUN mkdir -p /home/node/.n8n/custom && \
    cd /home/node/.n8n/custom && \
    npm init -y && \
    npm install n8n-nodes-tinyfish

# Tell n8n to load custom nodes
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom/node_modules

# Render port config
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000

EXPOSE 10000

USER node
