# Use an official Python runtime as a parent image
FROM public.ecr.aws/c7l4l0y6/tomer-ecr:py-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exposing port 80 outside of the container 
EXPOSE 80

# Define environment variable
ENV NAME counter-service

# Run counter-service.py when the container launches
CMD ["python", "hello-app.py"]
