@echo off
setlocal ENABLEDELAYEDEXPANSION
REM SET /A "length=32"
REM SET /A "bitspace=65536"

REM if NOT [%1]==[] set /A "length=%1"

REM ::echo %length%

REM set "charset=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^*`~,.-/"

REM set "out="

REM set /A "i=0"

REM :loop
REM if NOT %i% LSS %length% goto end
	REM :: Changes range to be [0-76], the length of the charset
	REM set RET=cont
	REM goto :RandomGen
	REM :cont
		REM set /A "rand=%rand% * 76 / %bitspace%"
		REM set out=%out%!charset:~%rand%,1!


	REM set /A i+=1
REM goto loop


REM :end
	REM echo %out%
	REM goto :eof

REM :RandomGen
	REM dotnet "%~dp0/RNG.dll" bytes=2 > tmpFile 
	REM set /p temp= < tmpFile 
	REM del tmpFile 
	REM set /A "rand=%temp%"
	REM ::echo %rand%
	REM goto %RET%
	
dotnet "%~dp0/NetCorePasswordgen.dll" %* > tmpFile 
type tmpFile
del tmpFile