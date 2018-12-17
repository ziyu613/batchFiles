@echo off

::设置CMD窗口字体颜色为0a 在CMD中输入命令 color /? 可查看颜色列表
color 0a
::设置CMD窗口显示模式为90列宽 20行高

mode con lines=20 cols=90
echo ##########################################
echo.
echo           系统自动打开
echo.                                                          
echo           选择系统功能
echo.
echo              V 1.0
echo.
echo ##########################################
echo.
choice /c abcdefg /M  日志填写,OT加班填写,协同办公平台,host路径,内网资源,QAsite,gitLab
if errorlevel 7 goto gitlab
if errorlevel 6 goto qa
if errorlevel 5 goto Ziyuan
if errorlevel 4 goto Host
if errorlevel 3 goto XieTong
if errorlevel 2 goto OT
if errorlevel 1 goto OA

:OA
start http://10.0.0.8/tlwoawebv2/
call rizhi.bat>>C:\Users\Administrator\Desktop\to_do\工作日志.txt
start C:\Users\Administrator\Desktop\to_do\工作日志.txt
goto end

:OT
start https://eip.teleware.cn/sites/gis/Lists/List2/AllItems.aspx
goto end

:Host
start %SystemRoot%\System32\drivers\etc\
goto end

:XieTong
start https://task.teleware.cn/tlwrwpfweb/Portal/UI.OA/Frames/Index.aspx
goto end

:Ziyuan
start \\10.0.7.49
goto end

:qa
start https://qa.teleware.cn/index.php
goto end

:gitlab
start http://10.0.4.5/miaoj/geocloud-deploy/wikis/home
goto end

:end
exit