#!/bin/bash
echo "==========Start start command=========="
sudo su -
cd /usr/local/bin
mkdir ffmpeg
cd ffmpeg
wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
tar -xzf ffmpeg-git-amd64-static.tar.xz
./ffmpeg -version
ffmpeg -version
echo "==========ffmpeg version above=========="
python3 -m venv .venv
source .venv/bin/activate
ffmpeg -version
echo "==========ffmpeg version33333 above=========="
pip3 install -r requirements.txt
python3 manage.py collectstatic 
gunicorn --workers 2 testsite.wsgi