

rem �o�b�`�t�@�C�������s���Ă���t�H���_�Ɉړ�
cd /d %~dp0

rem bitzeny-qt.exe���o�b�`�t�@�C�����s�p�X�����ɂȂ���΃��W�X�g���T�[�`
if not EXIST bitzeny-qt.exe call :reg_search

rem bitzenyd�����݂��邩�m�F�B�Ȃ����daemon�t�H���_�̊K�w�܂ŗ��Ƃ�
rem qt�t�H���_�Ŏ��s���Ă���\�������邽�ߔO�̂���
if EXIST daemon	cd daemon
if not EXIST bitzenyd.exe goto bitzenyd_not_found

rem bitzenyd�����s����v2.0.2.0-11f7e27�̕����񂪂���Ή������Ȃ�
bitzenyd --version | find "v2.0.2.0-11f7e27"
if %ERRORLEVEL% equ 0 goto v_is_ok
goto v_is_ng

rem ���W�X�g������bitzeny-qt.exe�̃p�X�������o����cd���s��
:reg_search
FOR /F "TOKENS=1,2,*" %%A IN ('REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\bitzeny\DefaultIcon" /v ""') DO IF "%%A"=="(����)" SET GET_VALUE=%%C
cd /D %GET_VALUE:~0,-15%
exit /b

rem bitzenyd not found
:bitzenyd_not_found
echo "bitzenyd�����̃t�H���_�ɂ���܂���"
pause
exit

rem v2.0.2.0-11f7e27�ȊO�̃o�[�W����
:v_is_ok
echo "�u���b�N�`�F�[���̍č\�z���ł�"
bitzenyd -reindex-chainstate
exit

rem v2.0.2.0-11f7e27
:v_is_ng
echo "�Â��o�[�W���������o����܂����B�ŐV�o�[�W�����ɍX�V���Ă��������B"
pause
exit