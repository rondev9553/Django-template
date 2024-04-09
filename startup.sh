#!/bin/bash
echo "==========Start start command=========="
apt-get update
apt-get install ffmpeg
ffmpeg -version
echo "==========ffmpeg version above=========="
python3 -m venv .venv
source .venv/bin/activate
pip3 install -r requirements.txt
python3 manage.py collectstatic 
gunicorn --workers 2 testsite.wsgi