 @ECHO OFF

mkdir %USERPROFILE%\docker_mount
docker run -it --rm -v %USERPROFILE%\docker_mount\:/win -v %cd%:/workdir brokkolii/brokk-alpine /bin/zsh -c "clear; /bin/zsh"