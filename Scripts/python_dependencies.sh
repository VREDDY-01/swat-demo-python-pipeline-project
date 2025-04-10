#!/bin/bash
set -e

echo "Setting up Python virtual environment..."
python3 -m venv venv
source venv/bin/activate

echo "Installing Python dependencies..."
pip install --upgrade pip

# If you have requirements.txt, install from it
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
fi

deactivate

echo "Python dependencies installed."
