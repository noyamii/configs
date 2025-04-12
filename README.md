# configs
## dependencies
```
mkdir ~/Apps
```
install light [nerd font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip).
```
sudo apt install git curl zsh tmux cmake g++ pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 ripgrep fd-find lua5.4 luarocks 
```
download rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
install [fzf](https://github.com/junegunn/fzf/releases/download/v0.61.1/fzf-0.61.1-linux_amd64.tar.gz) and copy it to /usr/bin.

install alacritty
```
git clone https://github.com/alacritty/alacritty.git
cd alacritty
cargo build --release
mkdir ~/Apps/Alacritty && cp -r target/release/* ~/Apps/Alacritty && cd .. && rm -rf alacritty
```
change default shell
```
sudo chsh -s /usr/bin/zsh $USER
```
install lazygit
```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
```

install node
```
curl -o- https://fnm.vercel.app/install | bash
fnm install 22

```
