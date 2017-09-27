#!/usr/bin/env sh

ENV=.venv
ACT="${ENV}/bin/activate"

if [ ! `which virtualenv >/dev/null; echo $?` -eq 0 ]; then
	sudo pip install virtualenv
fi

if [ ! -f "${ACT}" ]; then
	mkdir ${ENV}
	virtualenv ${ENV} --no-site-packages --unzip-setuptools
	source "${ACT}"
	easy_install pip
	pip install Cython==0.25.2
	pip install kivy
fi
source "${ACT}"
pip install -r requirements.txt
