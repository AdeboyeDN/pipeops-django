# Set the base image to Python 3.9
FROM python:3.11.0

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Set working directory
WORKDIR /code

# Copy requirements file to container
COPY requirements.txt /code/

# Install dependencies
RUN pip install -r requirements.txt

# Copy project files to container
COPY . /code/

# Expose port 8000 to the outside world
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
