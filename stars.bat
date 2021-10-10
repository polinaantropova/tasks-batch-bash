@echo off

setlocal enabledelayedexpansion

echo.
echo _______________
echo.

set string=

for /L %%i in (1,1,%1) do ( 
	for /L %%j in (1,1,%%i) do set string=!string!*
	echo !string!
	set string=
)

echo.
echo _______________
echo.

set string=

for /L %%i in (1,1,%1) do (
	for /L %%j in (%1,-1,%%i) do set string=!string!*
	echo !string!
	set string=
)

echo.
echo _______________
echo.

set string=

for /L %%i in (1,1,%1) do (
	set /a k=%1-%%i
	for /L %%j in (!k!,-1,1) do set string=!string! 
	for /L %%m in (1,1,%%i) do set string=!string!*
	echo !string!
	set string=
)

echo.
echo _______________
echo.

set string=

for /L %%i in (1,1,%1) do (
	set /a k=%1-%%i
	set /a r=2*%%i-1
	for /L %%j in (1,1,!k!) do set string=!string! 
	for /L %%m in (1,1,!r!) do set string=!string!*
	echo !string!
	set string=
)

set /a t=%1-1
for /L %%i in (!t!,-1,1) do (
	set /a k=%1-%%i
	set /a r=2*%%i-1
	for /L %%j in (%%i,1,!t!) do set string=!string! 
	for /L %%m in (1,1,!r!) do set string=!string!*
	echo !string!
	set string=
)

echo.
echo _______________
echo.