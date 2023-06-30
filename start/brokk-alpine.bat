@ECHO OFF

SET env_file=%~dp0..\.env

IF EXIST %env_file% (
    docker run -it --rm --env-file %env_file% -v %cd%:/workdir brokkolii/brokk-alpine
) ELSE (
    docker run -it --rm -v %cd%:/workdir brokkolii/brokk-alpine
)
