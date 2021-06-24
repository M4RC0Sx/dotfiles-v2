call plug#begin('~/.config/nvim/plugged')
    
    " Comment code
    Plug 'tpope/vim-commentary'

    " Syntax
    Plug 'sheerun/vim-polyglot'
    " Autocomplete (Intellisense)	
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Autopairs
    Plug 'jiangmiao/auto-pairs'    
    " Icons
    Plug 'ryanoasis/vim-devicons'
    " Fxf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Rooter
    Plug 'airblade/vim-rooter'
    " Git
    Plug 'mhinz/vim-signify'
    " File explorer
    Plug 'scrooloose/NERDTree'  
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'phanviet/vim-monokai-pro'

call plug#end()
