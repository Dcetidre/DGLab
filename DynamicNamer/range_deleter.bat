@echo off

set in=3000
set end=3001

echo.borrar todos los xml en el rango:
echo. %in% -- %end%
echo. enter para continuar.

pause

:in
for /l %%x in (%in%,1,%end%) do (del "out\%%x.xml" >nul )