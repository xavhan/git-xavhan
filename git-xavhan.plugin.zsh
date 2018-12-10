## git Aliases

# better git branch
alias gb="git branch -vv"

# force delete branch
alias gbD='git branch -D'

# publish branch (did not like the default alias)
alias gpub='gpsup'

# unpublish branch
alias gunpub='git branch --unset-upstream'

# patch commit
alias gcpa='git commit --patch'

# open staging files in code
alias glast="gd --name-only | xargs code"

# open merge conflicts in vscode
alias gres='git diff --name-only --diff-filter=U | uniq | xargs code'

# patch reset
alias grpa='git reset --patch'

# soft reset 1
alias grh1="git reset HEAD~1"

# hard reset 1
alias grh1h="git reset HEAD~1 --hard"

# other alias for gsh
alias gs='git show'

# cleaner git show
alias gst='gsb'

# to complete gma
alias gmc='git merge --continue'

## hub aliases

# PR against master 
alias gpr='git pull-request'

# checkout PR
alias gprco='git pr checkout'
alias gcopr='gprco'

## ghi aliases

# add "Need Review" label
alias gprnr='f() { ghi label $1 -a "Need Review" };f'

# add "Need Fixes" label
alias gprnf='f() { ghi label $1 -a "Need Fixes" };f'

# add "Currently in QA" label
alias gprqa='f() { ghi label $1 -a "Currently in QA" };f'

# remove "Need Review" & "Need Fixes" labels
alias gprok='f() { ghi label $1 -d "Need Review" -d "Need Fixes" };f'

# remove "Need Review" & "Need Fixes" labels and add "Currently in QA" label
alias gprpp='f() { gprok $1 && gprqa $1 };f'
