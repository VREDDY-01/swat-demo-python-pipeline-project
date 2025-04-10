#!/bin/bash
set -e

echo "Starting Gunicorn..."

# Activate virtual environment
source venv/bin/activate

# Example: Run app.py with `app` instance inside
nohup gunicorn --bind 0.0.0.0:8000 app:app &

deactivate

echo "Gunicorn started."
