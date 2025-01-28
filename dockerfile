# Step 1: Use an official Python runtime as a parent image
FROM python:3.12-slim

# Step 2: Set environment variables to ensure Python outputs are unbuffered (useful for logs)
ENV PYTHONUNBUFFERED 1

# Step 3: Set the working directory in the container
WORKDIR /app

# Step 4: Copy the current directory contents into the container
COPY . /app/

# Step 5: Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Step 6: Expose the port the app runs on (Flask defaults to port 5000)
EXPOSE 5000

# Step 7: Command to run the application (ensure this matches your entry point)
CMD ["python", "app.py"]
