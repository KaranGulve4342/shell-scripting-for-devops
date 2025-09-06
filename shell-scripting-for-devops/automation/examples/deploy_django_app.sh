#!/bin/bash

# This script automates the deployment of a Django application.

# Variables
APP_NAME="my_django_app"
REPO_URL="https://github.com/username/my_django_app.git"
VENV_DIR="$HOME/$APP_NAME/venv"
PROJECT_DIR="$HOME/$APP_NAME"

# Update and install necessary packages
sudo apt update
sudo apt install -y python3-pip python3-venv git

# Clone the repository
if [ ! -d "$PROJECT_DIR" ]; then
    git clone $REPO_URL $PROJECT_DIR
else
    echo "Project directory already exists. Pulling latest changes."
    cd $PROJECT_DIR
    git pull
fi

# Create a virtual environment
cd $PROJECT_DIR
if [ ! -d "$VENV_DIR" ]; then
    python3 -m venv $VENV_DIR
fi

# Activate the virtual environment
source $VENV_DIR/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start the application
nohup python manage.py runserver 0.0.0.0:8000 &

echo "Django application deployed successfully!"