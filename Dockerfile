FROM python:3.9-slim

WORKDIR /app

# Copy all project files
COPY . .

# Ensure __init__.py exists
RUN mkdir -p tests && touch tests/__init__.py

# Run tests
RUN python3 -m unittest discover -s tests -p '*_test.py'
