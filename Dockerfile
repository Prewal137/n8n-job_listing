FROM n8nio/n8n

USER root

# Install TinyFish
RUN npm install -g n8n-nodes-tinyfish

# Tell n8n where custom nodes are
ENV N8N_CUSTOM_EXTENSIONS=/usr/local/lib/node_modules

USER node

# Start n8n properly (NO sh)
CMD ["n8n"]
