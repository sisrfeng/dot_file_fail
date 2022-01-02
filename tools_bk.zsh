
#老是提示 $HOME/dot_file/.fzf/shell/key-bindings.zsh:31: parse error near done ,暂时不用
## 这样写可以省掉if, 也能判断条件
#[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
#


#  貌似重复
# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups


# 貌似没用
# todo   Disable correction:
unsetopt correct_all
unsetopt correct
DISABLE_CORRECTION="true"


function d () {
    # 这个有啥用？
    if [[ -n $1 ]]; then
        dirs "$@"
    else
        dirs -v | head -10
    fi
}

# 不灵
# source $HOME/dot_file/mode_vi_of_zsh/zsh-vi-mode.plugin.zsh

# 改终端在窗口所显示的内容？
# [[ -n "$TMUX" ]] && PROMPT_COMMAND='echo -n -e "\e]2;${PWD/${HOME}/~}\e\\"'
#

# 应该没用：
# export PATH=$PATH:$HOME/usr/local/bin:$HOME/.cargo/bin
