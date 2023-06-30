#!/bin/sh

if [ -n "$GIT_USERNAME" ] && [ -n "$GIT_PASSWORD" ]; then
    git config --global credential.helper store
    echo "https://${GIT_USERNAME}:${GIT_PASSWORD}@${GIT_SERVER}" > ~/.git-credentials
fi

if [ -n "$GIT_NAME" ]; then
    git config --global user.name "$GIT_NAME"
fi

if [ -n "$GIT_EMAIL" ]; then
    git config --global user.email "$GIT_EMAIL"
fi

exec /bin/zsh
