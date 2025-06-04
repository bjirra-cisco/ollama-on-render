FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl wget gnupg ca-certificates sudo lsb-release bash

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Copy startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

WORKDIR /root

EXPOSE 11434

# Use script to start
CMD ["/start.sh"]
