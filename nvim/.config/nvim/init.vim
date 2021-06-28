" Load general config
source $HOME/.config/nvim/general/settings.vim

" Load plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Load key bindings
source $HOME/.config/nvim/general/keys.vim

if exists('g:vscode')
    " Load VSCode settings
    source $HOME/.config/nvim/vscode/settings.vim
    " Load easymotion
    source $HOME/.config/nvim/plug-config/easymotion.vim

else
    " Load plugin config
    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/plug-config/fzf.vim
    source $HOME/.config/nvim/plug-config/nerdtree.vim
    source $HOME/.config/nvim/plug-config/signify.vim
    source $HOME/.config/nvim/plug-config/vim-commentary.vim

    "Theme settings
    source $HOME/.config/nvim/general/colors.vim
    source $HOME/.config/nvim/themes/airline.vim
    source $HOME/.config/nvim/themes/monokai-pro.vim

endif