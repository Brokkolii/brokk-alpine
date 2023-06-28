 @ECHO OFF

mkdir %USERPROFILE%\docker_mount
docker run -it --rm -v %USERPROFILE%\docker_mount\:/win -v %cd%:/workdir brokk-alpine /bin/zsh -c "clear; /bin/zsh"