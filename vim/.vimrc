" Use tabs inside makefiles
if has("autocmd")
  filetype plugin indent on
  autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

colorscheme elflord
syntax on

au BufRead,BufNewFile *.nix set filetype=nix
