#!/bin/bash

# Start a Python web server to serve the Guardian Angel website
# Accessible at http://localhost:8000

echo "Starting Guardian Angel website..."
echo "Access at: http://localhost:8000"

# Check if port 8000 is available
if lsof -Pi :8000 -sTCP:LISTEN -t >/dev/null ; then
    echo "Port 8000 is already in use. Trying to kill existing process..."
    pkill -f "python3 -m http.server 8000"
    sleep 2  # Wait for process to terminate
fi

# Start Python web server
python3 -m http.server 8000 --directory /project/sandbox/user-workspace/guardian-angel