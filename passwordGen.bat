@echo off
setlocal ENABLEDELAYEDEXPANSION
SET /A "length=32"

::This uses a RNG from stackoverflow, hence some of the comments LINK: https://stackoverflow.com/a/31278049/3513171
rem Pseudo random number generator based on "The Minimal Standard"
rem http://www.firstpr.com.au/dsp/rand31/p87-carta.pdf
rem Antonio Perez Ayala aka Aacini

rem Initialize values
set /A a=16807, s=40

rem APA Modification: use current centiseconds for initial value
for /F "tokens=2 delims=." %%a in ("%time%") do if "%%a" neq "00" set /A s=1%%a %% 100



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
		set /A "rand=%rand% * 76 / 32768"
		set out=%out%!charset:~%rand%,1!


	set /A i+=1
goto loop


:end
	echo %out%
	goto :eof

:RandomGen

	rem Multiply the two factors
	set /A s*=a

	rem If the result overflow 31 bits
	if %s% lss 0 (
	   rem Get result MOD (2^31-1)
	   set /A s+=0x80000000
	)

	rem APA modification: return just the low 15 bits of result (number between 0..32767)
	set /A "rand=s & 0x7FFF"
	goto %RET%