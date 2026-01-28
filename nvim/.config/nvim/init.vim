source ~/.config/nvim/.vimrc

" .vim_config klasöründeki alt dosyaları yükle
source ~/.config/nvim/.vim_config/alias.vim
source ~/.config/nvim/.vim_config/my_config.vim
source ~/.config/nvim/.vim_config/plugins_config.vim

" Eklenti (Plugin) yolunu Neovim'e tanıt
set runtimepath+=~/.config/nvim/.vim
set clipboard=unnamedplus
