@echo off
mode con lines=20 cols=110
color 0d
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
echo.
echo  1����60����geocloud�ļ�������������
echo.
echo  2����Prod���ݿ⵼��ָ���û������ݱ�ṹ
echo.
echo  3�����gateway���ļ��İ汾��˵�����
echo.
echo  4������˵���ĵ�
echo.
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

echo.
choice /c abcd /M  ������ǰ���ص��ļ��к��ļ�,�����ϴ���ģ���ļ���,��Ŀ����������������ļ�,��Զ�̻�������
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
start "" "E:\tmp\�ϴ�ģ��"
goto end

:copyFiles
start Copygeocloudfode.bat
goto end

:remoteSV
start mstsc
goto end

:end
exit