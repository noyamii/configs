# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab



# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'


#alias
alias ls='ls --color' 
alias las='ls --color -lah' 
alias dx='docker exec -it'
alias dxr='docker exec -u 0 -it'
alias dp='docker ps -a'
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias remove='sudo apt remove'
alias autoremove='sudo apt autoremove'
alias uua='sudo apt update && sudo apt upgrade && sudo apt autoremove'
alias vi='nvim'
alias py='python3'
alias neko='/opt/nekoray/launcher %F'

#export
export PATH=$PATH:$HOME/Apps/PhpStorm/bin
export PATH=$PATH:$HOME/Apps/Nvim/bin


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nima/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load completions
autoload -Uz compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# keybinding
bindkey -v
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
# shell integrations
eval "$(fzf --zsh)"
export PATH="/home/nima/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/nima/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# fnm
FNM_PATH="/home/nima/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/nima/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

# fnm
FNM_PATH="/home/nima/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/nima/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
