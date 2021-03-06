if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Php and symfony plugins
Plug 'rayburgemeestre/phpfolding.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" Use tabs inside makefiles
if has("autocmd")
  filetype plugin indent on
  autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

map <F5> <Esc>:EnableFastPHPFolds<Cr>
colo elflord
syntax on

