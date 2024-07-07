#!/bin/bash

# Vercel might use `python3` and `pip3` by default
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
python3 manage.py collectstatic --noinput
