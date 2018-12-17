@echo off
@rem 导出数据
@rem ===参数说明===========
@rem to.file     导出的文件名，导出时自动添加".yyyymmddHHmmss.log"格式的后缀，格式
@rem             C:\Users\Administrator\Desktop\exp
@rem exp.user    执行导出的用户名
@rem exp.pwd     执行导出的用户密码
@rem from.db     导出的数据库，格式192.168.1.3/orcl
@rem from.user   导出的用户
@rem log         日志文件名，导出时自动添加".yyyymmddHHmmss.log"格式的后缀，格式
@rem             C:\Users\Administrator\Desktop\exp
@rem ===设置参数=========
set to.file=E:\dataTableFiles\exp.tlw
set exp.user=SJGEOCLOUD_PLATFORM
set exp.pwd=SJGEOCLOUD_PLATFORM
set from.db=10.0.77.14/ORA11G
set from.db2=GTGEOCLOUD_COMMON
set from.user=SJGEOCLOUD_PLATFORM
set log=E:\dataTableFiles\exp.tlw
@rem     owner=(%from.user%) ^
@rem ===导出数据===========
set oracle_home=D:\app\Administrator\product\11.2.0\dbhome_1
cd %oracle_home%\bin & %oracle_home:~0,2%
set sys.datetime=%date:~0,4%%date:~5,2%%date:~8,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set sys.datetime=%sys.datetime: =0%
echo "开始导出dmp文件..."
exp %exp.user%/%exp.pwd%@%from.db% ^
    owner=(%from.user%) ^
    file="%to.file%.%sys.datetime%.dmp" ^
    log="%log%.%sys.datetime%.log" ^
    statistics=none buffer=8192000 feedback=10000

pause
@rem    tables=(xx)


REM exp %exp.user%/%exp.pwd%@%from.db% ^
    REM file="%to.file%.%sys.datetime%.dmp" ^
	REM full=Y
REM echo "导出Platform表完成..."
REM pause
REM @rem    log="%log%.%sys.datetime%.log" ^
REM @rem    statistics=none buffer=8192000 feedback=10000^
REM @rem    tables=(xx)
REM exp %exp.user%/%exp.pwd%@%from.db2% ^
    REM file="%to.file%.%sys.datetime%.dmp" ^
	REM full=Y
REM echo "导出common表完成..."
REM pause