@echo off
mode con lines=20 cols=110
color 0d
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
echo.
echo  1、从60导出geocloud文件夹下所有内容
echo.
echo  2、从Prod数据库导出指定用户的数据表结构
echo.
echo  3、检查gateway中文件的版本号说明情况
echo.
echo  4、更新说明文档
echo.
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

echo.
choice /c abcd /M  清理以前下载的文件夹和文件,清理上传的模板文件夹,从目标服务器下载所有文件,打开远程机器命令
REM if errorlevel 7 goto gitlab
REM if errorlevel 6 goto qa
REM if errorlevel 5 goto Ziyuan
if errorlevel 4 goto remoteSV
if errorlevel 3 goto copyFiles
if errorlevel 2 goto clearTemplateFolder
if errorlevel 1 goto clearFolder

:clearFolder
call rewindDir.bat
start "" "E:\publishGeoFoder"
goto end

:clearTemplateFolder
call deleteOldFolder.bat
start "" "E:\tmp\上传模板"
goto end

:copyFiles
start Copygeocloudfode.bat
goto end

:remoteSV
start mstsc
goto end

:end
exit