# Image from dockerhub
FROM python:3.13.2-slim

# Make /code as a working directory in the container
WORKDIR /code

# requirements from host, to docker container in /app
COPY ./requirements.txt /code/requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy everything from /app directory to /code/app in the container
COPY ./app /code/app

# Run the application
CMD ["fastapi", "run", "app/main.py", "--port", "80"]