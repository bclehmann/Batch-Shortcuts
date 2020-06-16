@echo off

::cd %defaultLgDir%


if [%1]==[-d] cd %2

 :: This requires my gitconfig, check my gists 
start cmd /k "git lg"

::It is intentional to use cmd over powershell, it looks better on blacc
