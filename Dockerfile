FROM ollama/ollama

# Add your custom startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 11434

# Override default ENTRYPOINT and run your script
ENTRYPOINT ["/bin/bash", "/start.sh"]
