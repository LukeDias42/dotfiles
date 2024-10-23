export GOROOT="/usr/local/go"
export GOPATH="$HOME/golibs/"
path+=("$GOROOT/bin")
path+=("$GOPATH/bin")
export PATH
export EDITOR="nvim"
export SHELL="zsh"
export ZSH="$HOME/.oh-my-zsh"

. "$HOME/.asdf/asdf.sh"

# fortune -s | cowsay -f stegosaurus
neofetch

alias n='nvim .'
alias nps='nu -c "ps | where cpu > 0"'
alias cat=bat
alias wiki=wiki-tui
alias thu='tmux a -t hurb-0 || tmux new -t hurb'
alias tkill='tmux kill-server'

function nls() {
  nu -c ls
}

function hcd() {
    cd $HOME/dev/hud/$@ && nls -F || echo "Are you sure $@ is installed?"
}

function hstart() {
    hudctl start $@
}

function qute() {
  $HOME/git/Personal/qutebrowser/.venv/bin/python3 -m qutebrowser
}

plugins=(git zsh-autosuggestions brew colored-man-pages nvm thefuck golang rust)
source $ZSH/oh-my-zsh.sh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':completion:*:*:make:*' tag-order 'targets'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# ~/.zshrc

eval "$(starship init zsh)"
