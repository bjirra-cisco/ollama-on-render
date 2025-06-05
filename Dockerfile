FROM ollama/ollama

# Install curl
RUN apt-get update && apt-get install -y curl

# Copy the start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 11434

ENTRYPOINT ["/bin/bash", "/start.sh"]
