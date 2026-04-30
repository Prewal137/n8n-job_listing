FROM n8nio/n8n

USER root

# Install TinyFish (custom node)
RUN npm install -g n8n-nodes-tinyfish

# Tell n8n where custom nodes are
ENV N8N_CUSTOM_EXTENSIONS=/usr/local/lib/node_modules

USER node

# IMPORTANT → Use Render dynamic port
CMD ["sh", "-c", "n8n start --host=0.0.0.0 --port=$PORT"]
