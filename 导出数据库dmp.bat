@echo off
@rem ��������
@rem ===����˵��===========
@rem to.file     �������ļ���������ʱ�Զ����".yyyymmddHHmmss.log"��ʽ�ĺ�׺����ʽ
@rem             C:\Users\Administrator\Desktop\exp
@rem exp.user    ִ�е������û���
@rem exp.pwd     ִ�е������û�����
@rem from.db     ���������ݿ⣬��ʽ192.168.1.3/orcl
@rem from.user   �������û�
@rem log         ��־�ļ���������ʱ�Զ����".yyyymmddHHmmss.log"��ʽ�ĺ�׺����ʽ
@rem             C:\Users\Administrator\Desktop\exp
@rem ===���ò���=========
set to.file=E:\dataTableFiles\exp.tlw
set exp.user=SJGEOCLOUD_PLATFORM
set exp.pwd=SJGEOCLOUD_PLATFORM
set from.db=10.0.77.14/ORA11G
set from.db2=GTGEOCLOUD_COMMON
set from.user=SJGEOCLOUD_PLATFORM
set log=E:\dataTableFiles\exp.tlw
@rem     owner=(%from.user%) ^
@rem ===��������===========
set oracle_home=D:\app\Administrator\product\11.2.0\dbhome_1
cd %oracle_home%\bin & %oracle_home:~0,2%
set sys.datetime=%date:~0,4%%date:~5,2%%date:~8,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set sys.datetime=%sys.datetime: =0%
echo "��ʼ����dmp�ļ�..."
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
REM echo "����Platform�����..."
REM pause
REM @rem    log="%log%.%sys.datetime%.log" ^
REM @rem    statistics=none buffer=8192000 feedback=10000^
REM @rem    tables=(xx)
REM exp %exp.user%/%exp.pwd%@%from.db2% ^
    REM file="%to.file%.%sys.datetime%.dmp" ^
	REM full=Y
REM echo "����common�����..."
REM pause