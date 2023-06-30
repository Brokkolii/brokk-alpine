@ECHO OFF

SET env_file=%~dp0..\.env
SET ports_file=%~dp0..\.ports

SET ports_args=
IF EXIST %ports_file% (
	FOR /F "tokens=*" %%a IN (%ports_file%) DO (
		SET ports_args=%ports_args% -p %%a
	)
)

SET proxy_args=
IF DEFINED HTTP_PROXY SET proxy_args=%proxy_args% -e HTTP_PROXY=%HTTP_PROXY%
IF DEFINED HTTPS_PROXY SET proxy_args=%proxy_args% -e HTTPS_PROXY=%HTTPS_PROXY%
IF DEFINED NO_PROXY SET proxy_args=%proxy_args% -e NO_PROXY=%NO_PROXY%

IF EXIST %env_file% (
	docker run -it --rm --env-file %env_file% %proxy_args% %ports_args% -v %cd%:/workdir brokkolii/brokk-alpine
) ELSE (
	docker run -it --rm %proxy_args% %ports_args% -v %cd%:/workdir brokkolii/brokk-alpine
)
