# Use official Python image
FROM python:3.12

# Set the working directory inside the container
WORKDIR /app

# Copy project files
COPY requirements.txt requirements.txt
COPY src/ src/
COPY tests/ tests/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run tests
CMD ["pytest", "--cov=src", "tests/"]
