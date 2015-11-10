syntax on
set nocompatible

if has('vim_starting')
  " NeoBundle
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'moll/vim-node'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'boeckmann/vim-freepascal'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

" Configure Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Map leader key
let mapleader=","

" Show line numbers
set number

" Configure solor scheme
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
let base16colorspace=256
set background=dark
colorscheme base16-flat

" Configure code format
set tabstop=2
