@echo off
echo.
echo Testing the oracle imp.exe function
echo.

@rem ===设置参数=========
set to.file=E:\dataTableFiles\exp.tlw
set imp.user=TEST
set imp.pwd=test
set imp.db=10.1.66.110/orcl
set from.db2=GTGEOCLOUD_COMMON
set from.user=SJGEOCLOUD_PLATFORM
set log=E:\dataTableFiles\exp.tlw
@rem ===导出数据===========
set oracle_home=D:\app\Administrator\product\11.2.0\dbhome_1
cd %oracle_home%\bin & %oracle_home:~0,2%
echo Start import data...
imp %imp.user%/%imp.pwd%@%imp.db% ^
            file=E:\dataTableFiles\exp.tlw.20181122145237.dmp ^
			full=y ignore=y
pause

