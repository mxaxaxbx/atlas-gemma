#!/bin/sh
# Start nginx
nginx

# Start Ollama
ollama serve &

# Wait for Ollama to start
until curl -s http://localhost:11434/api/health; do
  echo "Waiting for Ollama to start..."
  sleep 2
done

# Pull the model
ollama pull gemma:2b

# Keep the container running
wait
