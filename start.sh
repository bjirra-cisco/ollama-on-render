#!/bin/bash

# Start Ollama listening on 0.0.0.0
ollama serve --host 0.0.0.0 &

# Wait for server to boot
sleep 5

# Pull model
ollama pull gemma:2b

# Keep container running
tail -f /dev/null
