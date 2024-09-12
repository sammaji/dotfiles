# syntax=docker/dockerfile:1
FROM archlinux:latest

ARG UNAME="newuser"
RUN pacman -Syu --noconfirm git neovim zsh \
    fzf fd neofetch;

RUN useradd -m -s /bin/bash ${UNAME};
USER "${UNAME}"

COPY ./.zshrc ./.p10k.zsh /home/${UNAME}/
RUN mkdir -p /home/${UNAME}/.confirm/ \
    && git clone https://github.com/sammaji/boomer.nvim \
    /home/${UNAME}/.config/nvim/

WORKDIR /home/${UNAME}/workspace/
ENTRYPOINT [ "/usr/bin/zsh" ]
