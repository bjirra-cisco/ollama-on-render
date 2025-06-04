FROM ubuntu:22.04

# Avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt-get update && \
    apt-get install -y curl wget gnupg ca-certificates sudo lsb-release

# Add Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Set working dir
WORKDIR /root

# Expose default port
EXPOSE 11434

# Run Ollama server
CMD [ "ollama", "serve" ]
