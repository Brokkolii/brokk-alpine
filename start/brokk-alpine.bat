@ECHO OFF

SET env_file=%~dp0..\.env
SET ports_file=%~dp0..\.ports

SET ports_args=
IF EXIST %ports_file% (
	FOR /F "tokens=*" %%a IN (%ports_file%) DO (
		SET ports_args=%ports_args% -p %%a
	)
)
ECHO %ports_args%
pause
IF EXIST %env_file% (
    docker run -it --rm --env-file %env_file% %ports_args% -v %cd%:/workdir brokkolii/brokk-alpine
) ELSE (
    docker run -it --rm %ports_args% -v %cd%:/workdir brokkolii/brokk-alpine
)
