#!/bin/bash

# Start the Ollama server on 0.0.0.0 for external access
ollama serve --host 0.0.0.0 &

# Wait for the server to spin up
sleep 5

# Pull your model
ollama pull gemma:2b

# Keep the container running
tail -f /dev/null
