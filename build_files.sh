#!/bin/bash

# Ensure Python and pip are installed and updated
python3 -m pip install --upgrade pip

# Install Python dependencies from requirements.txt
python3 -m pip install -r requirements.txt

# Run Django collectstatic command
python3 manage.py collectstatic --noinput
