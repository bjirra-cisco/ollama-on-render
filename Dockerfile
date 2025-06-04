FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl unzip wget git build-essential make bash ca-certificates sudo gnupg software-properties-common

# Install Go (required for building Ollama)
RUN wget https://go.dev/dl/go1.22.2.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.22.2.linux-amd64.tar.gz && \
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

ENV PATH=$PATH:/usr/local/go/bin

# Clone and build Ollama
RUN git clone https://github.com/ollama/ollama.git /ollama && \
    cd /ollama && \
    make

# Copy startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 11434

ENTRYPOINT ["/bin/bash", "/start.sh"]
