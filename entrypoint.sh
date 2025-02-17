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

# Keep the container running
wait
