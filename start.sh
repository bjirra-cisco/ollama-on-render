#!/bin/bash

# Start the Ollama server bound to all interfaces
ollama serve --host 0.0.0.0 &

# Wait for the server to initialize
sleep 5

# Pull the desired model
ollama pull gemma:2b

# Keep the container running
tail -f /dev/null
