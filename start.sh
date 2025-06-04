#!/bin/bash

# Start the Ollama server and bind to 0.0.0.0 so Render can reach it
/ollama/bin/ollama serve --host 0.0.0.0 &

# Wait for it to be ready
sleep 5

# Pull the model
/ollama/bin/ollama pull gemma:2b

# Keep the container running
tail -f /dev/null
