@echo off  
echo ****************************************  
echo �Զ������ļ��У���ű����ļ��ͱ��ݽű���  
echo ****************************************  
  
  
set source_client_folder_path=/var/www/html
set source_server_folder_path=/homee/geocloud
set local_path=E:/publishGeoFoder

set local_client_path=E:\publishGeoFoder\client
set local_server_path=E:\publishGeoFoder\server
   
set AFolder=%local_client_path%\app\static\  
set BFolder=%local_client_path%\cas\  
set CFolder=%local_client_path%\geocloud\static\
set DFolder=%local_client_path%\storymap\static\
set EFolder=%local_server_path%\data\templates\
set FFolder=%local_server_path%\config\
set GFolder=%local_server_path%\lib\

set C1Folder=BackupTools  
set C2Folder=AutoBakFiles  
set C3Folder=AutoBakHistoryFiles  
set C4Folder=AutoBakBatRunLogs  
  
 
  
  
echo ��������׼�����������ļ���  
echo .  
echo ��ʼִ��-----------------------  
echo ɾ�������ļ����ļ���  
echo.
echo Delete old geocloud folder files...
del /s /q %local_client_path%
del /s /q %local_server_path%
echo.
REM @ping 127.0.0.1 -n 1000 >null
echo start deleting folder...
rd /s /q %AFolder%
rd /s /q %BFolder%
rd /s /q %CFolder%
rd /s /q %DFolder%
rd /s /q %EFolder%
rd /s /q %FFolder%
rd /s /q %GFolder%
echo.
echo �峡��Ͽ�ʼ�����ļ���......
    if exist %AFolder% (         
        rem Ŀ¼d:\<span style="font-family: Arial, Helvetica, sans-serif;">MIS</span>�Ѵ��ڣ����贴��  
        echo Ŀ¼%AFolder%�Ѵ��ڣ����贴��  
    ) else (  
        rem ����d:\MIS  
        echo ����%AFolder%         
        md %AFolder%  
    )  
  
    if exist %BFolder% (  
        rem Ŀ¼d:\MIS\OracleDBAutoBackup�Ѵ��ڣ����贴��  
        echo Ŀ¼%BFolder%�Ѵ������贴��         
    ) else (  
        rem ����d:\MIS\OracleDBAutoBackup   
        echo ����%BFolder%  
        md %BFolder%  
    )  
	
	    if exist %CFolder% (  
        rem Ŀ¼d:\MIS\OracleDBAutoBackup�Ѵ��ڣ����贴��  
        echo Ŀ¼%CFolder%�Ѵ������贴��         
    ) else (  
        rem ����d:\MIS\OracleDBAutoBackup   
        echo ����%CFolder%  
        md %CFolder%  
    )
	    if exist %DFolder% (  
        rem Ŀ¼d:\MIS\OracleDBAutoBackup�Ѵ��ڣ����贴��  
        echo Ŀ¼%DFolder%�Ѵ������贴��         
    ) else (  
        rem ����d:\MIS\OracleDBAutoBackup   
        echo ����%DFolder%  
        md %DFolder%  
    )
	    if exist %EFolder% (  
        rem Ŀ¼d:\MIS\OracleDBAutoBackup�Ѵ��ڣ����贴��  
        echo Ŀ¼%EFolder%�Ѵ������贴��         
    ) else (  
        rem ����d:\MIS\OracleDBAutoBackup   
        echo ����%EFolder%  
        md %EFolder%  
    )
	    if exist %FFolder% (  
        rem Ŀ¼d:\MIS\OracleDBAutoBackup�Ѵ��ڣ����贴��  
        echo Ŀ¼%FFolder%�Ѵ������贴��         
    ) else (  
        rem ����d:\MIS\OracleDBAutoBackup   
        echo ����%FFolder%  
        md %FFolder%  
    )
	    if exist %GFolder% (  
        rem Ŀ¼d:\MIS\OracleDBAutoBackup�Ѵ��ڣ����贴��  
        echo Ŀ¼%GFolder%�Ѵ������贴��         
    ) else (  
        rem ����d:\MIS\OracleDBAutoBackup   
        echo ����%GFolder%  
        md %GFolder%  
    )
    
echo .  
echo ��ִ�����(�˳��밴�������ֱ�ӹرմ���)-----------------------  
echo .  
pause  