# aerospace
mkdir -p ~/.config/aerospace && cp aerospace.toml ~/.config/aerospace/

# git
cp .gitconfig ~/.gitconfig

# tmux
cp .tmux.conf ~/.tmux.conf

# vim
cp .vimrc ~/.vimrc

# zshrc
cp .zshrc ~/.zshrc

# btop
mkdir -p ~/.config/btop && cp btop.conf ~/.config/btop/

# k9s
mkdir -p "$HOME/Library/Application Support/k9s" && cp k9s.yaml "$HOME/Library/Application Support/k9s/config.yaml"

# alacritty
mkdir -p ~/.config/alacritty
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
cp ./alacritty.toml ~/.config/alacritty/alacritty.toml
