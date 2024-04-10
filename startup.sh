#!/bin/bash
echo "==========Start start command=========="
sudo yum update
sudo yum search wget
sudo yum install wget
sudo yum search tar
sudo yum install tar
sudo wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
sudo tar -xvf ffmpeg-git-amd64-static.tar.xz
sudo mkdir ffmpeg-git-20240301-amd64-static/ffmpeg
sudo mv ffmpeg-git-20240301-amd64-static/ffmpeg /usr/local/bin/
sudo chmod +x /usr/local/bin/ffmpeg
ffmpeg -version
echo "==========ffmpeg version above=========="
python3 -m venv .venv
source .venv/bin/activate
ffmpeg -version
echo "==========ffmpeg version33333 above=========="
pip3 install -r requirements.txt
python3 manage.py collectstatic 
gunicorn --workers 2 testsite.wsgi