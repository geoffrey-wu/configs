PROMPT='%B%F{123}%n%f%b %(?.%F{255}.%F{red}?%? )%f%B%F{255}%1~%f%F{123} $ %f%b'
RPROMPT='%*'

alias grep='grep --color'
alias py='python'
alias pip='pip3'
alias clac='ssh gw2447@clac.cs.columbia.edu'
alias l='ls'
alias ls='ls -G'
alias ll='ls -alFG'

export EDITOR=vim

export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.1
export PATH=$PATH:/Users/gwu/.spicetify

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gwu/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gwu/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gwu/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gwu/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

