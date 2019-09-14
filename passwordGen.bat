@echo off
setlocal ENABLEDELAYEDEXPANSION
SET /A "length=32"
SET /A "bitspace=65536"

if NOT [%1]==[] set /A "length=%1"

::echo %length%

set "charset=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^*`~,.-/"

set "out="

set /A "i=0"

:loop
if NOT %i% LSS %length% goto end
	:: Changes range to be [0-76], the length of the charset
	set RET=cont
	goto :RandomGen
	:cont
		set /A "rand=%rand% * 76 / %bitspace%"
		set out=%out%!charset:~%rand%,1!


	set /A i+=1
goto loop


:end
	echo %out%
	goto :eof

:RandomGen
	dotnet "%~dp0/RNG.dll" bytes=2 > tmpFile 
	set /p temp= < tmpFile 
	del tmpFile 
	set /A "rand=%temp%"
	::echo %rand%
	goto %RET%