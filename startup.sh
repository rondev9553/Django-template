#!/bin/bash
echo "==========Start start command=========="
sudo yum install epel-release -y
sudo rpm -Uvh https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
sudo yum install ffmpeg ffmpeg-devel -y
ffmpeg -version
echo "==========ffmpeg version above=========="
python3 -m venv .venv
source .venv/bin/activate
ffmpeg -version
echo "==========ffmpeg version33333 above=========="
pip3 install -r requirements.txt
python3 manage.py collectstatic 
gunicorn --workers 2 testsite.wsgi