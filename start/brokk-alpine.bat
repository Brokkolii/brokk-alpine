@ECHO OFF

SET image=brokkolii/brokk-alpine

IF "%1"=="local" (
    SET image=brokk-alpine
)

IF EXIST ../.env (
    docker run -it --rm --env-file ../.env -v %cd%:/workdir %image% /bin/zsh
) ELSE (
    docker run -it --rm -v %cd%:/workdir %image% /bin/zsh
)