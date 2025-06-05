#!/bin/bash

# Start Ollama and bind to 0.0.0.0 by setting ENV variable
export OLLAMA_HOST=0.0.0.0

# Start the server in the background
ollama serve &

until curl -s http://localhost:11434; do
  echo "Waiting for Ollama to start..."
  sleep 1
done

# Pull the model
ollama pull gemma:2b

# Keep the container running
tail -f /dev/null


