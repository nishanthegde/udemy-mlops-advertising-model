# ci-cd/Dockerfile

FROM python:3.11-slim

WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy code and tests into the image
COPY advertising_model_training.py .
COPY test_training.py .

# Default behavior when someone runs this image manually
CMD ["python", "advertising_model_training.py"]
