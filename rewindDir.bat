@echo off  
echo ****************************************  
echo 自动创建文件夹（存放备份文件和备份脚本）  
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
  
 
  
  
echo 本批处理准备创建以下文件夹  
echo .  
echo 开始执行-----------------------  
echo 删除所有文件和文件夹  
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
echo 清场完毕开始创建文件夹......
    if exist %AFolder% (         
        rem 目录d:\<span style="font-family: Arial, Helvetica, sans-serif;">MIS</span>已存在，无需创建  
        echo 目录%AFolder%已存在，无需创建  
    ) else (  
        rem 创建d:\MIS  
        echo 创建%AFolder%         
        md %AFolder%  
    )  
  
    if exist %BFolder% (  
        rem 目录d:\MIS\OracleDBAutoBackup已存在，无需创建  
        echo 目录%BFolder%已存在无需创建         
    ) else (  
        rem 创建d:\MIS\OracleDBAutoBackup   
        echo 创建%BFolder%  
        md %BFolder%  
    )  
	
	    if exist %CFolder% (  
        rem 目录d:\MIS\OracleDBAutoBackup已存在，无需创建  
        echo 目录%CFolder%已存在无需创建         
    ) else (  
        rem 创建d:\MIS\OracleDBAutoBackup   
        echo 创建%CFolder%  
        md %CFolder%  
    )
	    if exist %DFolder% (  
        rem 目录d:\MIS\OracleDBAutoBackup已存在，无需创建  
        echo 目录%DFolder%已存在无需创建         
    ) else (  
        rem 创建d:\MIS\OracleDBAutoBackup   
        echo 创建%DFolder%  
        md %DFolder%  
    )
	    if exist %EFolder% (  
        rem 目录d:\MIS\OracleDBAutoBackup已存在，无需创建  
        echo 目录%EFolder%已存在无需创建         
    ) else (  
        rem 创建d:\MIS\OracleDBAutoBackup   
        echo 创建%EFolder%  
        md %EFolder%  
    )
	    if exist %FFolder% (  
        rem 目录d:\MIS\OracleDBAutoBackup已存在，无需创建  
        echo 目录%FFolder%已存在无需创建         
    ) else (  
        rem 创建d:\MIS\OracleDBAutoBackup   
        echo 创建%FFolder%  
        md %FFolder%  
    )
	    if exist %GFolder% (  
        rem 目录d:\MIS\OracleDBAutoBackup已存在，无需创建  
        echo 目录%GFolder%已存在无需创建         
    ) else (  
        rem 创建d:\MIS\OracleDBAutoBackup   
        echo 创建%GFolder%  
        md %GFolder%  
    )
    
echo .  
echo 已执行完毕(退出请按任意键或直接关闭窗体)-----------------------  
echo .  
pause  