# 安裝
```bash
sudo dnf install -y epel-release
sudo dnf install -y neovim nodejs git unzip
sudo npm install -g npm install -g tree-sitter-cli@0.20.4
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone https://github.com/nilm987521/nvim-config.git ~/.config/nvim
nvim +PlugInstall +qall
```
