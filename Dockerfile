FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl wget gnupg ca-certificates sudo lsb-release unzip bash

# Add the GPG key and repo for Ollama
RUN curl -fsSL https://ollama.com/download/ollama.gpg | gpg --dearmor -o /usr/share/keyrings/ollama.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/ollama.gpg] https://ollama.com/download/linux stable main" | tee /etc/apt/sources.list.d/ollama.list && \
    apt-get update && \
    apt-get install -y ollama

# Copy your custom start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

WORKDIR /root

EXPOSE 11434

CMD ["/start.sh"]
