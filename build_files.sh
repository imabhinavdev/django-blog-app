#!/bin/bash

# Ensure that pip is available
if ! command -v pip &> /dev/null
then
    echo "pip could not be found"
    exit 1
fi

# Ensure that python is available
if ! command -v python &> /dev/null
then
    echo "python could not be found"
    exit 1
fi

# Install dependencies
pip install -r requirements.txt || { echo "pip install failed"; exit 1; }

# Collect static files
python manage.py collectstatic --noinput || { echo "collectstatic failed"; exit 1; }

# Prepare static files for deployment
mkdir -p staticfiles_build
cp -r staticfiles/. staticfiles_build/ || { echo "copy static files failed"; exit 1; }

echo "Build script completed successfully"
