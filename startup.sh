#!/bin/bash
echo "==========Start start command=========="
python3 -m venv .venv
source .venv/bin/activate
pip3 install -r requirements.txt
python3 manage.py collectstatic 
gunicorn --workers 2 testsite.wsgi