@echo off

set stdin=
for /F "tokens=*" %%a in ('more') do (
  set stdin=%stdin%%%a
)

explorer %stdin%