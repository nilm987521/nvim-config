FROM rockylinux:8.6
RUN dnf install -y epel-release wget
RUN wget -O - https://rpm.nodesource.com/setup_18.x | bash
RUN dnf install -y neovim passwd sudo git unzip nodejs
RUN dnf group install -y "Development Tools"
RUN npm install -g tree-sitter-cli@0.20.4
RUN useradd -m dev
RUN echo "%dev ALL=(ALL) NOPASSWD:ALL" | tee -a /etc/sudoers

USER dev
WORKDIR /home/dev
RUN mkdir ~/.config
COPY --chown=dev:dev nvim /home/dev/.config/nvim
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
RUN nvim +PlugInstall +qall
ENTRYPOINT ["bash", "-c"]
