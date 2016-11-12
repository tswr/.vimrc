# Installation

    git clone https://github.com/tswr/.vimrc.git ~/vim-tswr/
    bash ~/vim-tswr/setup.sh

The file setup.sh contains following instructions:

    git clone https://github.com/gmarik/Vundle.vim.git ~/vim-tswr/.vim/bundle/Vundle.vim
    ln -Fs ~/vim-tswr/.vim ~
    ln -fs ~/vim-tswr/.vimrc ~
    vim +PluginInstall +qall
