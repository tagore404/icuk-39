FROM python:3.9-slim

WORKDIR /app

# Copy everything
COPY . .

# Create virtual env (optional but recommended)
RUN python3 -m venv venv && . venv/bin/activate

# Install dependencies if needed (optional)
# RUN pip install -r requirements.txt

# Add __init__.py if needed
RUN touch tests/__init__.py

# Run unit tests
RUN python3 -m unittest discover -s ./tests -p '*_test.py'
