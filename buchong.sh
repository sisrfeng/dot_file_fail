set -x
setopt aliases
apt install -y -qq
alias ai='apt install -y -qq'
alias apt='apt -y -qq'
alias pip3='pip3 -qq'
alias cp='cp -r'

git clone --depth 1 https://github.com/junegunn/fzf.git /.fzf
/.fzf/install
