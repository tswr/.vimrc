scriptencoding utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mbbill/undotree'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'spf13/vim-colors'
Plugin 'altercation/vim-colors-solarized'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'ervandew/supertab'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-bufferline'
Plugin 'google.vim'
Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/a.vim'
Plugin 'mhinz/vim-startify'
Plugin 'mhinz/vim-signify'
Plugin 'jpalardy/spacehi.vim'
Plugin 'rking/ag.vim'
Plugin 'christoomey/vim-tmux-navigator'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlight
if has("syntax")
  syntax on
endif

" set dark background
set background=dark
colorscheme molokai
" set background=light

if has('gui_running')
    set guioptions-=T  " no toolbar
    set background=light
    "colorscheme default
    "colorscheme desert
    "colorscheme koehler
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  au! BufEnter *.cpp let b:fswitchdst = 'hpp,h' " for F5
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd             " Show (partial) command in status line.
set showmode            " Show the current mode
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hlsearch            " Enable search highlighting
set autowrite           " Automatically save before commands like :next and :make
set hidden              " Hide buffers when they are abandoned
set cursorline          " Highlight current line
set list listchars=tab:»·,trail:·,precedes:<,extends:> " Highlight problematic whitespace
set modelines=0

"set mouse=a             " Enable mouse usage (all modes)

" options for <TAB>
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set autoindent
set smartindent

set t_Co=256 " use 256 colors

"set number
"set relativenumber
set mousehide " hide the mouse while typing
"set showtabline=0 "Вырубаем черточки на табах
"set foldcolumn=1

"Prevent vim from creating swap (.swp) and backup (~) files
set backup
"set noswapfile

set encoding=utf-8 " default encoding
set fileencodings=utf-8,cp1251,cp866

set nowrap

"Add $ sign while changing
set cpoptions+=$

"Set virtualedit
set virtualedit=all

"memorize folding
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
"au! BufReadPost,BufWritePost * silent loadview
"
"set up a good status line
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" %{fugitive#statusline()}
"set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
"set laststatus=2

" Don't update the display while executing macros
set lazyredraw

set history=200 " Remember this number of lines of history

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor

" Make the command-line completion better
set wildmenu
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.

" Set the textwidth to be 80 chars
set textwidth=80

set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)

set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current

" for good word wrap
"set linebreak
"set showbreak=→

set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
" let g:tex_flavor='latex'
"let g:Tex_TreatMacViewerAsUNIX=1

" function! SyncTexForward()
"     let s:syncfile = fnamemodify(fnameescape(Tex_GetMainFileName()), ":r").".pdf"
"     let execstr = "silent !okular --unique ".s:syncfile."\\#src:".line(".").expand("%\:p").' &'
"     exec execstr
" endfunction
" nnoremap <Leader>f :call SyncTexForward()<CR>

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
" set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
" set iskeyword+=:

" MAPPINGS
" nmap <F2> :make<CR>
" nmap <F3> :NERDTreeToggle<CR>
" nmap <F5> :FSHere<CR>
" nmap <F4> :TlistToggle<CR>
" nmap <C-PageDown> :bn<CR>
" nmap <C-PageUp> :bp<CR>

" build tags of your own project with Ctrl-F5
" map <C-F5> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

if has("gui_macvim")
    set guifont=Menlo\ Regular:h15
endif

" normal backspace
set backspace=indent,eol,start

set tags=tags;
" set autochdir

" Initialize directories {
    function! InitializeDirectories()
        let parent = $HOME
        let prefix = 'vim'
        let dir_list = {
                    \ 'backup': 'backupdir',
                    \ 'views': 'viewdir',
                    \ 'swap': 'directory' }

        if has('persistent_undo')
            let dir_list['undo'] = 'undodir'
        endif

        let common_dir = parent . '/.' . prefix

        for [dirname, settingname] in items(dir_list)
            let directory = common_dir . dirname . '/'
            if exists("*mkdir")
                if !isdirectory(directory)
                    call mkdir(directory)
                endif
            endif
            if !isdirectory(directory)
                echo "Warning: Unable to create backup directory: " . directory
                echo "Try: mkdir -p " . directory
            else
                let directory = substitute(directory, " ", "\\\\ ", "g")
                exec "set " . settingname . "=" . directory
            endif
        endfor
    endfunction
    call InitializeDirectories()

" airline

let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '^V' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '^S' : 'S',
    \ }

let g:airline_left_sep = '»'
let g:airline_right_sep = '«'

" (bufferline or filename)
let g:airline_section_c = '%f'
" (percentage, line number, column number)
let g:airline_section_z = '%3p%%: %3l:%3c [%02B]'

" colorcolumn
set cc=80
hi ColorColumn guibg=#3D4646 ctermbg=238

autocmd FileType c,cpp,python,sh autocmd BufWritePre <buffer> :%s/\s\+$//e
