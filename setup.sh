git clone https://github.com/gmarik/Vundle.vim.git ~/vim-tswr/.vim/bundle/Vundle.vim
ln -Fs ~/vim-tswr/.vim ~
ln -fs ~/vim-tswr/.vimrc ~
vim +PluginInstall +qall