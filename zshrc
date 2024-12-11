eval "$(dircolors ~/.dircolors)"

alias ls='ls --color=auto'

alias ccW='cc -Wall -Wextra -Werror -g'                                         
alias ccM='cc -Wall -Wextra -Werror -g main.c '                                 
alias norm='norminette -R CheckForbiddenSourceHeader --use-gitignore'

alias francinette=/nfs/homes/npolack/francinette/tester.sh
alias paco=/nfs/homes/npolack/francinette/tester.sh


# Git stuff
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '-('$branch')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
# prompt='%2/ $(git_branch_name) > '
prompt='%F{green}%2d%f%F{blue}$(git_branch_name)%f>'
# PROMPT='%F{green}%3d%f %F{blue}%n%f>'
