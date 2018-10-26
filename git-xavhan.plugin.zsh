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
alias gbD='git branch -D'
alias gpub='git push --set-upstream origin $(current_branch)'
alias gunpub='git branch --unset-upstream'
alias gcpa='git commit --patch'
alias gidem='gca -c HEAD'
alias gpf='git push --force-with-lease'
alias gpr='git pull-request'
alias gprco='git pr checkout'
alias gcopr='git pr checkout'
alias glast="gd --name-only | xargs code"
alias gres='git diff --name-only --diff-filter=U | uniq  | xargs code'
alias grpa='git reset --patch'
alias gs='git show'

alias gprnr='f() { ghi label $1 -a "Need Review" };f'
alias gprnf='f() { ghi label $1 -a "Need Fixes" };f'
alias gprqa='f() { ghi label $1 -a "Currently in QA" };f'
alias gprok='f() { ghi label $1 -d "Need Review" -d "Need Fixes" };f'
alias gprpp='f() { gprok $1 && gprqa $1 };f'
