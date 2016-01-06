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
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'boeckmann/vim-freepascal'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

" Map leader key
let mapleader=","

" Don't display line numbers
set nonumber

" Configure solor scheme
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
let base16colorspace=256
set background=dark
colorscheme base16-flat

" Configure file type formatting.
if has('autocmd')
  autocmd Filetype go
    \ set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
endif

" Configure YCM
let g:ycm_autoclose_preview_window_after_completion = 1

" Tab shortcuts.
nnoremap <C-L> gt
nnoremap <C-H> gT

" Tagbar
nmap <C-T> :TagbarToggle<CR>

" Go
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_structs=1
let g:go_highlight_operators=1
let g:go_highlight_build_constraints=1
let g:go_fmt_fail_silently=1
let g:go_fmt_command="goimports"
