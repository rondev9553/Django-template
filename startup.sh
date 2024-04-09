#!/bin/bash
echo "==========Start start command=========="
if [ ! -f /usr/local/bin/ffmpeg ]
then
  wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
  tar xvf ffmpeg-release-amd64-static.tar.xz
  mv ffmpeg-*-amd64-static/ff* /usr/local/bin/
fi
ffmpeg -version
echo "==========ffmpeg version above=========="
python3 -m venv .venv
source .venv/bin/activate
ffmpeg -version
echo "==========ffmpeg version33333 above=========="
pip3 install -r requirements.txt
python3 manage.py collectstatic 
gunicorn --workers 2 testsite.wsgi