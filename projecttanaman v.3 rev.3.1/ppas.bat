@echo off
SET THEFILE=d:\pascal~1\projec~2\projec~1.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\PASCAL~1\PROJEC~2\rsrc.o -s   -b base.$$$ -o d:\pascal~1\projec~2\projec~1.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
