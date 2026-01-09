source ~/.vimrc

" .vim_config klasöründeki alt dosyaları yükle
source ~/.vim_config/alias.vim
source ~/.vim_config/my_config.vim
source ~/.vim_config/plugins_config.vim

" Eklenti (Plugin) yolunu Neovim'e tanıt
set runtimepath+=~/.vim
set clipboard=unnamedplus
