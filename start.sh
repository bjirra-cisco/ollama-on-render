#!/bin/bash

# Start Ollama in background
ollama serve --host 0.0.0.0 &

# Wait a few seconds for server to boot
sleep 5

# Pull your model
ollama pull gemma:2b

# Keep container alive
tail -f /dev/null
