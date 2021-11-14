#!/bin/bash

#verify python version
PYTHONVERSION=$(python -V 2>&1 | grep -Po '(?<=Python )(.+)');
if [[ -z "$PYTHONVERSION" ]]; then
    echo "No Python version found, exiting setup ... ";
    exit 1;
elif [[ ${PYTHONVERSION:0:1} -ne 3 || ${PYTHONVERSION:2:1} -lt 6 ]]; then
    echo "Wrong Python version installed. requires >= Python 3.6";
    exit 1;
fi

#TODO add more user setup verification

## install windows requirements
(cd buildscripts && pip install -r requirements.txt)

## setup pyqt5
make qt5py3

echo "";
echo "Setup sucessful ...";
echo "To open labelImg, run 'python3 labelImg.py'";
