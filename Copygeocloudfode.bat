@echo off

echo.
echo ##################################
echo.
echo Copy geocloud foder from 10.0.7.60
echo.
echo ##################################
echo.


set source_client_folder_path=/var/www/html
set source_server_folder_path=/homee/geocloud

set local_client_path=E:\publishGeoFoder\client
set local_server_path=E:\publishGeoFoder\server

set orign_ftp=root@10.0.7.60
set username=root
set passwd=tlw1@#$

REM echo Delete old geocloud folder files...
REM del /s /q %local_client_path%
REM del /s /q %local_server_path%

REM echo Delete the old upload folder files...
REM call deleteOldFolder.bat

REM echo creating data folder and its subfolders...
REM md %local_server_path%/data/templates
REM md %local_server_path%/data/templates/error
REM md %local_server_path%/data/templates/fragments

echo Delete the existing vbf files just in case not clean...
del inputpassword.vbs /q
del get_folders.vbs /q
REM del get_client_folders.vbs /q 
REM del get_server_folders /q
echo.
echo ++++++++++++++++++++++++++++++
echo.
echo Old existing vbs files deleted...


REM To auto login the sftp 
(echo set Wshell=CreateObject^("Wscript.Shell"^)
echo wscript.Sleep 2000
echo Wshell.SendKeys "tlw1@#$"
echo Wshell.SendKeys "{ENTER}") > inputpassword.vbs
start "" "inputpassword.vbs"

rem The action flow 
rem copy client folder...
(echo set Ws=CreateObject^("Wscript.Shell"^)
echo wscript.Sleep 3000
echo Ws.SendKeys "get -rf %source_client_folder_path%/app/static/. %local_client_path%\app\static\"
echo Ws.SendKeys "{ENTER}"
REM echo wscript.Sleep 3000
echo Ws.SendKeys "get -rf %source_client_folder_path%/cas/. %local_client_path%\cas\"
echo Ws.SendKeys "{ENTER}"
REM echo wscript.Sleep 3000
echo Ws.SendKeys "get -rf %source_client_folder_path%/geocloud/static/. %local_client_path%\geocloud\static\"
echo Ws.SendKeys "{ENTER}"
REM echo wscript.Sleep 5000
echo Ws.SendKeys "get -rf %source_client_folder_path%/storymap/static/. %local_client_path%\storymap\static\"
echo Ws.SendKeys "{ENTER}"
REM echo wscript.Sleep 9000
echo Ws.SendKeys "get -rf %source_server_folder_path%/data/templates/. %local_server_path%\data\templates\"
echo Ws.SendKeys "{ENTER}"
REM echo wscript.Sleep 2000
echo Ws.SendKeys "get -rf %source_server_folder_path%/config/. %local_server_path%\config\"
echo Ws.SendKeys "{ENTER}"
REM echo wscript.Sleep 3000
echo Ws.SendKeys "get -rf %source_server_folder_path%/lib/.  %local_server_path%\lib\"
echo Ws.SendKeys "{ENTER}") > get_folders.vbs
start "" "get_folders.vbs"


echo Start copying...
echo.
echo Process Steps..
echo.
echo 1.Copy client folder
echo.
echo 2.Copy server data folder 
echo.
echo 3.Copy server config folder 
echo.
echo 4.Copy server config lib
echo.
sftp %orign_ftp%
pause