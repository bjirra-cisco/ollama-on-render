FROM ollama/ollama

# Serve Ollama on 0.0.0.0 so Render can access it
CMD ollama serve --host 0.0.0.0 & \
    sleep 5 && \
    ollama pull gemma:2b && \
    tail -f /dev/null
