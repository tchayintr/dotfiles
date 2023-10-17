# linuxbrew: core
eval "$($HOME/.linuxbrew/bin/brew shellenv)"

# linuxbrew: bash completion
[[ -r "/home/lr/chayintr/.linuxbrew/etc/profile.d/bash_completion.sh" ]] && . "/home/lr/chayintr/.linuxbrew/etc/profile.d/bash_completion.sh"

# # linuxbrew: python (binary + compilers + pkg-config)
# export PATH="/home/lr/chayintr/.linuxbrew/opt/python@3.10/bin:$PATH"
# export LDFLAGS="-L/home/lr/chayintr/.linuxbrew/opt/python@3.10/lib"
# export CPPFLAGS="-I/home/lr/chayintr/.linuxbrew/opt/python@3.10/include"
# export PKG_CONFIG_PATH="/home/lr/chayintr/.linuxbrew/opt/python@3.10/lib/pkgconfig"

# To use linuxbrew packages rather than default packages 
# export PATH="$HOME/.linuxbrew/opt/python@3.11/libexec/bin:$PATH"

# export PATH="$HOME/.linuxbrew/bin:$PATH"

# If you need to have glibc first in your PATH, run:
export PATH="/home/lr/chayintr/.linuxbrew/opt/glibc/bin:$PATH"
export PATH="/home/lr/chayintr/.linuxbrew/opt/glibc/sbin:$PATH"

# For compilers to find glibc 
export LDFLAGS="-L/home/lr/chayintr/.linuxbrew/opt/glibc/lib"
export CPPFLAGS="-I/home/lr/chayintr/.linuxbrew/opt/glibc/include"

# # ruby gems
# export PATH="$HOME/.linuxbrew/lib/ruby/gems/3.2.0/bin:$PATH"

# pyenv 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# eval "$(pyenv init - --no-rehash)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/lr/chayintr/.pyenv/versions/miniconda3-core/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lr/chayintr/.pyenv/versions/miniconda3-core/etc/profile.d/conda.sh" ]; then
        . "/home/lr/chayintr/.pyenv/versions/miniconda3-core/etc/profile.d/conda.sh"
    else
        export PATH="/home/lr/chayintr/.pyenv/versions/miniconda3-core/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# # CUDA (latest version) 
# # sorted by priority (1:2:3:...)
# export PATH=$PATH:/usr/local/cuda/bin:$HOME/.local/cuda/cuda-10.0/bin
# export CUDADIR=$CUDADIR:/usr/local/cuda:$HOME/.local/cuda/cuda-10.0
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:$HOME/.local/cuda/cuda-10.0/lib64
# export CPATH=$CPATH:/usr/local/cuda/include:$HOME/.local/cuda/cuda-10.0/include

# CUDA
export CUDA_HOME=/usr/local/cuda-11.8
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

# Alias
alias sl='ls'
alias ks='ls'
alias l='ls -lvhoX --color=auto'
alias ls='ls --color=auto'
alias ll='ls -alvhoX --color=auto'
alias rm='rm -i' # Remove Confirmation
alias htm='htop -u $(whoami)'
alias nvi='nvidia-smi'
alias nviw='watch nvidia-smi'
alias jsonv='python3 -m json.tool'     # view json in beautiful format
alias tmux='tmux -2'    # tmux 256-color
alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -s"
alias tk="t kill-session -t"
alias mux="tmuxinator"
alias condaa="conda activate"
alias condad="conda deactivate"
alias cdraid="cd /raid_elmo/home/lr/chayintr"
alias cdyj="cd /home/lr/CHIN"
alias cprs="rsync -ah --inplace --no-whole-file --info=progress2"
alias cls=clear
alias ckear=clear
alias cls=clear
alias gpu="gpustat -cpu"
alias gpuw="gpustat -cpu --watch"
alias lvim="/usr/bin/vim"
alias dfm="df -h | grep chayintr"
alias jpt="jupyter-lab --ip 127.0.0.1 --no-browser --port"
alias tbh="tensorboard --logdir . --port 6060"
alias tb="tensorboard --logdir $1 --port $2"

# Scripts
[ -f $HOME/.local/scripts/notify/notify-slack ] && source $HOME/.local/scripts/notify/notify-slack
[ -f $HOME/.local/etc/profile.d/bash_completion.sh ] && source $HOME/.local/etc/profile.d/bash_completion.sh
export PATH=$PATH:$HOME/.local/scripts/pid-watcher
export PATH=$PATH:$HOME/.local/scripts/qnote

# Misc
export EDITOR="vim"

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# less command charset
export LESSCHARSET=utf-8

# bat
export BAT_THEME="ansi"

# # pyicu (icu4c)
# export PYICU_INCLUDES=$HOME/.linuxbrew/opt/icu4c/include
# export PYICU_LFLAGS=$HOME/.linuxbrew/opt/icu4c/lib

# java
export JAVA_HOME="/usr/lib/jvm/java-1.11.0-openjdk-amd64"
export PATH="$PATH:$JAVA_HOME/bin"

# pythainlp corpus
PYTHAINLP_DATA_DIR="$HOME/pythainlp-data"

# function
function _switch_cuda {
    v=$1
    export CUDA_HOME=/usr/local/cuda-$v
    export PATH=$CUDA_HOME/bin:$PATH
    export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
    nvcc --version
}

# nvm
export NVM_DIR="$HOME/.nvm"
# [ -s $HOMEBREW_PREFIX/opt/nvm/nvm.sh ] && source $HOMEBREW_PREFIX/opt/nvm/nvm.sh
  export NVM_DIR="$HOME/.nvm"
[ -s $HOMEBREW_PREFIX/opt/nvm/nvm.sh ] && \. $HOMEBREW_PREFIX/opt/nvm/nvm.sh
[ -s $HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm  ] && \. $HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm

# fzf (must be put at the end)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
