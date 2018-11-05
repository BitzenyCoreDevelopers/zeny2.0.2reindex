

rem バッチファイルを実行しているフォルダに移動
cd /d %~dp0

rem bitzeny-qt.exeがバッチファイル実行パス直下になければレジストリサーチ
if not EXIST bitzeny-qt.exe call :reg_search

rem bitzenydが存在するか確認。なければdaemonフォルダの階層まで落とす
rem qtフォルダで実行している可能性があるため念のため
if EXIST daemon	cd daemon
if not EXIST bitzenyd.exe goto bitzenyd_not_found

rem bitzenydを実行してv2.0.2.0-11f7e27の文字列があれば何もしない
bitzenyd --version | find "v2.0.2.0-11f7e27"
if %ERRORLEVEL% equ 0 goto v_is_ok
goto v_is_ng

rem レジストリからbitzeny-qt.exeのパスを見つけ出してcdを行う
:reg_search
FOR /F "TOKENS=1,2,*" %%A IN ('REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\bitzeny\DefaultIcon" /v ""') DO IF "%%A"=="(既定)" SET GET_VALUE=%%C
cd /D %GET_VALUE:~0,-15%
exit /b

rem bitzenyd not found
:bitzenyd_not_found
echo "bitzenydがこのフォルダにありません"
pause
exit

rem v2.0.2.0-11f7e27以外のバージョン
:v_is_ok
echo "ブロックチェーンの再構築中です"
bitzenyd -reindex-chainstate
exit

rem v2.0.2.0-11f7e27
:v_is_ng
echo "古いバージョンが検出されました。最新バージョンに更新してください。"
pause
exit