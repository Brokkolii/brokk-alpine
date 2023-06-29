FROM alpine:latest
RUN apk update && apk upgrade && apk add vim nodejs git curl zsh npm openssl fzf

WORKDIR /workdir

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="af-magic"/g' ~/.zshrc

RUN git config --global init.defaultBranch main

COPY .vimrc /root/.vimrc
COPY .vim /root/.vim

COPY init-script.sh /usr/local/bin/init-script.sh
RUN chmod +x /usr/local/bin/init-script.sh
ENTRYPOINT ["init-script.sh"]
