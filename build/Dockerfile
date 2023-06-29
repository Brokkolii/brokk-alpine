FROM alpine:latest
RUN apk update && apk upgrade && apk add vim nodejs git curl zsh npm openssl fzf

WORKDIR /workdir

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="af-magic"/g' ~/.zshrc

RUN git config --global init.defaultBranch main

COPY .vimrc /root/.vimrc
RUN sed -i 's/\r$//' /root/.vimrc

COPY .vim /root/.vim

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN vim +PluginInstall +qall

COPY init-script.sh /usr/local/bin/init-script.sh
RUN chmod +x /usr/local/bin/init-script.sh
ENTRYPOINT ["init-script.sh"]
