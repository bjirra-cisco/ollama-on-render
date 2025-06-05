#!/bin/bash

# Start Ollama server on all interfaces
ollama serve --host 0.0.0.0 &

# Wait a moment for server to be ready
sleep 5

# Pull your model
ollama pull gemma:2b

# Keep it running forever
tail -f /dev/null
