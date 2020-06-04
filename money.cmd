@ echo off
color 0b

REM set path=C:\Users\bhairesh.m\Documents\Personal\MOHAN\
set file=mohan-owes-me.csv

echo.
echo 1. Write
echo 2. Read
REM echo 3. New
REM echo 4. Delete
REM echo 5. Exit
echo.

SET /p n="Select the number: "

if %n% == '1' goto :write
if %n% == '2' goto :read

:chekFileExist
IF EXIST %file% (
    REM del filename.
    echo "Exists"
) ELSE (
    echo %file% missing.
)

:read
rem start excel %file%

:write
set /p amount="Enter the amount: "
set a=%amount%
set /p type="Enter the type: "
set t=%type%
set /p desc="Enter the Description: "
set d=%desc%

:chekFileExist

REM Headings
echo "Amount","Type","Description">%file%
REM Values
echo %a%,%t%,%d%>>%file%

:continue
cmd money.cmd

:exit
exit 0