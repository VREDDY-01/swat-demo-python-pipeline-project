#!/bin/bash
set -e

echo "Checking for existing Gunicorn process..."

# Kill existing gunicorn process if running
if pgrep gunicorn > /dev/null; then
    echo "Stopping existing Gunicorn process..."
    pkill gunicorn
    sleep 2  # Optional: give it a moment to release the port
else
    echo "No existing Gunicorn process found."
fi

echo "Starting application..."

# Activate virtualenv
source venv/bin/activate

# Start app via Gunicorn
nohup gunicorn --bind 0.0.0.0:8000 app:app > flaskapp.log 2>&1 & disown

echo "Application started and running on port 8000."

echo "Gunicorn started. Exiting script..."
exit 0