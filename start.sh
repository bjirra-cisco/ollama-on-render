#!/bin/bash

# Start Ollama server on 0.0.0.0
ollama serve --host 0.0.0.0 &

# Wait for server
sleep 5

# Pull model
ollama pull gemma:2b

# Keep alive
tail -f /dev/null
