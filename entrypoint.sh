#!/bin/sh
ollama serve &
until curl -s http://localhost:11434; do
  echo "Waiting for Ollama to start..."
  sleep 2
done
ollama pull gemma:2b
wait
