@echo off

::����CMD����������ɫΪ0a ��CMD���������� color /? �ɲ鿴��ɫ�б�
color 0a
::����CMD������ʾģʽΪ90�п� 20�и�

mode con lines=20 cols=90
echo ##########################################
echo.
echo           ϵͳ�Զ���
echo.                                                          
echo           ѡ��ϵͳ����
echo.
echo              V 1.0
echo.
echo ##########################################
echo.
choice /c abcdefg /M  ��־��д,OT�Ӱ���д,Эͬ�칫ƽ̨,host·��,������Դ,QAsite,gitLab
if errorlevel 7 goto gitlab
if errorlevel 6 goto qa
if errorlevel 5 goto Ziyuan
if errorlevel 4 goto Host
if errorlevel 3 goto XieTong
if errorlevel 2 goto OT
if errorlevel 1 goto OA

:OA
start http://10.0.0.8/tlwoawebv2/
call rizhi.bat>>C:\Users\Administrator\Desktop\to_do\������־.txt
start C:\Users\Administrator\Desktop\to_do\������־.txt
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