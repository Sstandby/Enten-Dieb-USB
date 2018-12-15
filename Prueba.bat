
FOR /L %%b in (0,1,6) do (
set /a name=%random%
echo netsh wlan show profiles > C:\Users\%USERNAME%\Downloads\Pass.txt
echo netsh wlan show profile name=%name% key=clear >> C:\Users\%USERNAME%\Downloads\Pass.txt

)
