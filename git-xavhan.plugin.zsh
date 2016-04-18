function current_branch() {
  local ref
  ref=$($_omz_git_git_cmd symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$($_omz_git_git_cmd rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}
#
alias gb="git branch -vv"
alias gc="npm run commit"
alias gdo="gd --name-only | xargs atom-beta"
alias gpub='git push --set-upstream origin $(current_branch)'
alias gunpub='git branch --unset-upstream'
alias gcpa='git commit --patch'
alias goops='gcan!'
alias gpr='git pull-request'
alias gres='git diff --name-only --diff-filter=U | uniq  | xargs atom-beta'
alias grpa='git reset --patch'
alias gs='git show'

alias glogw="while true; do clear; glog -25 | cat; sleep 30; done"
alias glolw="while true; do clear; glol -25 | cat; sleep 30; done"
alias glolaw="while true; do clear; glola -25 | cat; sleep 30; done"
