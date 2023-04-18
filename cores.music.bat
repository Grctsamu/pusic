@echo off
:start
ren cache cache%random%%random%%random%
md cache
ren custommusic custommusic%random%%random%%random%
set prodir=%cd%


md cache
md caches
if not exist customed.txt echo 0  > customed.txt
if not exist C:\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\resource_packs\Music+ if not exist C:\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\resource_packs\CustomMusi\ (
echo Descargando Complementos
wget --no-check-certificate https://minecraftpeapk.000webhostapp.com/apps-assets/musicplus.rar
wget --no-check-certificate https://minecraftpeapk.000webhostapp.com/apps-assets/custommusic.rar
echo Complementos descargados
echo %date% Descargando Complementos >> pusic.log
echo Descomprimiendo Elementos
echo %date% Descompriminedo Elementos >> pusic.log
unrar x -r musicplus.rar 
unrar x -r custommusic.rar 
echo Empaquetando
echo %date% Empaquetando >> pusic.log
7z a -tzip packimport1.mcpack %cd%\musicplus\
7z a -tzip packimport2.mcpack %cd%\custommusic\
packimport1.mcpack
timeout 30 /NOBREAK
packimport2.mcpack
echo %date%  Cacheando >> pusic.log
move musicplus.rar %cd%\cache\
move custommusic.rar %cd%\cache\
move packimport1.mcpack %cd%\cache\
move packimport2.mcpack %cd%\cache\
move custommusic %cd%\cache\
move musicplus %cd%\cache\
ren cache cache%random%%random%%random%
md cache
)






cls





















:menxd
echo %date% Iniciado >> pusic.log
set programpath=%cd%\




set /p numa=<customed.txt
echo %numa% sonidos creados
echo Arrastre los ogg deseados
set /p "ogg=>
echo %date% %ogg% A crear >> pusic.log

echo Escriba el nombre con extension ejemplo: miaudio.ogg
set /p "name=>
echo %date% %name% Nombre >> pusic.log
set /a numa=%numa%+1
echo %date% Sonido %numa%>> pusic.log
echo %numa% > customed.txt


xcopy /E C:\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\resource_packs\CustomMusi %programpath%
echo %date% Extrayendo Desde Carpeta Minecraft >> pusic.log
echo Escriba "S" seguido de la tecla enter 
ren cache cache%random%%random%%random%
md cache
echo %date% Eliminando Desde Minecraft >> pusic.log
move C:\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\resource_packs\CustomMusi %cd%\cache\ 

echo %date% Copiando %ogg% De Nombre %name% >> pusic.log

copy %ogg% %cd%\custommusic\custom_songs\
ren %cd%\custommusic\custom_songs\%name% custom%numa%.ogg
echo %date% Cancion Copiada >> pusic.log
echo Cancion Agregada
move %name% cache
echo Empaquetando
echo %date% Empaquetando en un mcpack >> pusic.log
7z a -tzip temppack%numa%.mcpack %cd%\custommusic\
echo Empaquetado
timeout 2 /NOBREAK > nul
echo %date% Abriendo con Minecraft >> pusic.log
echo Abriendo
temppack%numa%.mcpack
echo %date% Esperando 30 segundos para mover a cache >> pusic.log
echo Espere 30 Segundos
timeout 30 /NOBREAK > nul
echo Importado
echo %date% Moviendo A Cache el archivo temppack%numa%.mcpack >> pusic.log
move temppack%numa%.mcpack %cd%\cache\
ren cache cache%random%%random%%random%
md cache
ren cache cache%random%%random%%random%
md cache
ren custommusic custommusiccache%random%%random%%random% 
echo %date% Hasta Aqui Mi Reporte >> pusic.log
echo %date% Volviendo a iniciar >> pusic.log
7z a -tzip %cd%\caches\cachenum%random%%random%.zip %cd%\cache\
ren cache cache%random%%random%%random%
md cache
echo Presione Cualquier Tecla
pause > nul
goto start




