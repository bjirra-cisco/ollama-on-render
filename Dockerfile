FROM ollama/ollama

# Copy and allow execution of our start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose Ollama's default port
EXPOSE 11434

# Run Ollama + pull model + keep server alive
ENTRYPOINT ["/bin/bash", "/start.sh"]
