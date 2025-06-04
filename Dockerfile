FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl wget gnupg ca-certificates sudo unzip bash

# Install latest Ollama manually from GitHub releases
RUN curl -LO https://ollama.com/download/OllamaLinux.zip && \
    unzip OllamaLinux.zip -d /usr/local/bin && \
    chmod +x /usr/local/bin/ollama

# Add ollama to PATH explicitly
ENV PATH="/usr/local/bin:$PATH"

# Set working directory
WORKDIR /root

# Expose default port
EXPOSE 11434

# Add start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Start everything
CMD ["/start.sh"]
