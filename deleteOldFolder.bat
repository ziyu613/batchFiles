@echo off

set oldfolder_client=E:\tmp\上传模板\客户端
set oldfolder_server=E:\tmp\上传模板\服务端

echo delete old file tree...
del /s /q  %oldfolder_client%
del /s /q  %oldfolder_server%

pause