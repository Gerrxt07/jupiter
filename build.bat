@echo off

echo      _             _ _            
echo     ^| ^|_   _ _ __ (_) ^|_ ___ _ __ 
echo  _  ^| ^| ^| ^| ^| '_ \^| ^| __/ _ \ '__^|
echo ^| ^|_^| ^| ^|_^| ^| ^|_) ^| ^| ^|^|  __/ ^|   
echo  \___/ \__,_^| .__/^|_^\__\___^|_^|   
echo             ^|_^|                   

echo Building Jupiter...

pause

pip show pyinstaller > nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo PyInstaller not found. Installing...
    pip install pyinstaller
)

pyinstaller --noconfirm --onefile --icon="assets/logo/Logo3.png" --name="Jupiter" --add-data="scripts;scripts/" --add-data="lib;lib/" --add-data="assets;assets/" --add-data="requirements.txt;." --distpath="." --add-binary="%LocalAppData%\Programs\Python\Python312\python312.dll;." --version-file="version.txt" main.py
REM --uac-admin for Admin

rmdir /s /q build

del *.spec

pause