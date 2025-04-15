FROM python:latest

# Set the working directory
WORKDIR /service

# Copy the requirements file
COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port (adjust if your app uses another port)
EXPOSE 8080

# Define the command to run your app
ENTRYPOINT ["python3", "app.py"]

