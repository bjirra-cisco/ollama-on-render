FROM ollama/ollama

# Copy your startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 11434

# Override the default entrypoint
ENTRYPOINT ["/bin/bash", "/start.sh"]
