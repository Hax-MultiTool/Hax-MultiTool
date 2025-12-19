@echo off
pyinstaller --onefile --hidden-import pygetwindow --hidden-import pyrect --hidden-import pywinctl --icon=ico.ico hax.py
pause