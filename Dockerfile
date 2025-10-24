# Step 1: Use official Python image
FROM python:3.11-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy files
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Step 4: Expose port
EXPOSE 5000

# Step 5: Run the app
CMD ["python", "app.py"]
