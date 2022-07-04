# if [ "$TERM" != 'st-256color' ]; then
# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
source ~/.config/nnn/nnn.zsh
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/local/i3/bin:$PATH

export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.nimble/bin:$PATH
export PATH=$HOME/.node_modules/bin:$PATH
# Path to your oh-my-zsh installation.
# export ZSH=/home/utter/.oh-my-zsh

export EDITOR=kak

(cat ~/.cache/wal/sequences &)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="arrow"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


# plugins=(
# 	alias-tips
# 	history
# 	zsh-history-substring-search
# 	zsh-autosuggestions
# 	zsh-completions
# 	# catimg
# 	pass
# 	# vi-mode
# )


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
#
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
setopt autocd
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--ansi --layout=reverse --multi"
# export FZF_DEFAULT_COMMAND="fd --type file --hidden -I"
export FZF_DEFAULT_COMMAND="fd --type file --hidden -I --exclude .git --exclude void-packages --exclude node_modules"


# source $ZSH/oh-my-zsh.sh
source ~/scripts/zsh/arrow.zsh-theme
source ~/scripts/zsh/alias-tips.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
#
#
#fuck -y
# eval $(thefuck --alias)
# . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#eval "$(pyenv virtualenv-init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"


# bindkey -M vicmd "j" up-line-or-beginning-search
#####################################################################################################
# Vi Mode
####################################################################################################
# VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
#   bindkey -v

#   bindkey -M vicmd "t" backward-char
#   bindkey -M vicmd "n" down-line-or-history
#   bindkey -M vicmd "l" up-line-or-history
#   bindkey -M vicmd "s" forward-char
#   bindkey -M vicmd "a" vi-insert
#   bindkey -M vicmd "A" vi-insert-bol
#   bindkey -M vicmd "k" vi-repeat-search
#   bindkey -M vicmd "K" vi-rev-repeat-search
#   bindkey -M vicmd "F5" beginning-of-line
#   bindkey -M vicmd "F7" end-of-line
#   bindkey -M vicmd "F3" vi-forward-word-end
#   bindkey -M vicmd "F1" vi-backward-word
#   bindkey -M vicmd "J" vi-forward-blank-word-end

# # Sane Undo, Redo, Backspace, Delete.
#   bindkey -M vicmd "f" undo
#   bindkey -M vicmd "F" redo
#   bindkey -M vicmd "^?" backward-delete-char
#   bindkey -M vicmd "g" vi-delete
#   bindkey -M vicmd "u" vi-change

# # Keep ctrl+r searching
#   bindkey -M viins '^R' history-incremental-pattern-search-forward
#   bindkey -M viins '^r' history-incremental-pattern-search-backward

#   bindkey -M vicmd "d" yank
#   bindkey -M vicmd "i" get-line

# autoload -U compinit && compinit
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey '^[[15~' beginning-of-line
bindkey '^[[18~' end-of-line
bindkey '^[OP' backward-word
bindkey '^[OR' forward-word
bindkey '^[OQ' select-in-word
bindkey '^[OS' delete-word

bindkey '^O' clear-screen
# bindkey '^S' delete-word
# bindkey '^R' delete-word


bindkey 'ⓢ' delete-word
bindkey 'ⓣ' backward-delete-word
bindkey 'ⓝ' kill-whole-line
bindkey "^F" undo
bindkey "^P" redo

stty stop undef
stty intr "^A"
stty susp "^Q"
stty eof "^G"
# stty stop "^M" #breaks sudo
# stty start "^J"


# ctrl c d z fg s q r y
alias k='kcr edit'
alias K='kcr-fzf-shell'
alias KK='K --working-directory .'
alias ks='kcr shell --session'
alias kl='kcr list'
alias a='kcr attach'

# Open files _from_ and _to_ a session.
# $ :f src
# $ f: mawww/kakoune
alias :f='kcr fzf files'
alias :a="kcr-fzf-files -I --exclude .git --exclude void-packages --exclude node_modules"

alias f:='KK kcr fzf files'
alias :g='kcr fzf grep'
alias g:='KK kcr fzf grep'

alias kcd='kcr send execute-keys "cd $PWD"'


alias vi='nvim'
alias gv='gvim -v'
alias xs="xbps-query -Rs"
alias -g xss='~/void-packages/xbps-src pkg $(ls ~/void-packages/srcpkgs | fzf)'
alias ls='exa'
alias papersplease="wine /home/utter/Downloads/IGG-PapePlease.v1.1.67-S/PapersPlease.exe"
alias paint="kolourpaint"
# alias cat="bat"
alias ps="procs"
alias fd="fd -I"
alias -g ZZ="| fzf"
alias fzfp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# alias n="nnn -x"
# alias -g Z='$(fzf)'
alias -g Z='`fzf`'
# alias -g Z='~/scr``ts/fzf/open.sh'
alias nk="i3-msg move left && i3-msg resize set width 200px && nnn"
# alias ntree ="sh -c 'i3-msg move left && i3-msg resize set width 200px && nnn'"
alias http='python3 -m http.server'
alias hide='kitty @ set-window-title h'
alias unhide='kitty @ set-window-title v'
alias visible='kitty @ set-window-title viz'
alias batt='bat -p --paging=always'


alias l="exa -l --no-permissions"
alias la="exa -la --no-permissions"

alias _="doas"

alias battery="bat /sys/class/power_supply/BAT0/capacity"

n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, either remove the "export" as in:
    #    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    #    (or, to a custom path: NNN_TMPFILE=/tmp/.lastd)
    # or, export NNN_TMPFILE after nnn invocation
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn -x "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
# fi
