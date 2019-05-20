__PROMPT_SYMBOL="❯"

# Current directory.
# Return only three last items of path
__current_dir() {
  echo -n "%B%F{cyan}"
  echo -n "%3~"
  echo    "%f%b"
}

# Git status.
# Collect indicators, git branch and pring string.
__git_status() {
  # Check if the current directory is in a Git repository.
  command git rev-parse --is-inside-work-tree &>/dev/null || return

  # Check if the current directory is in .git before running git checks.
  if [[ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]]; then
    echo -n " %Bon%b "
    echo -n "%B%F{magenta}"
    echo -n "$(git_current_branch)"
    echo -n "%f%b"
  fi
}

# Command prompt.
# Pain $PROMPT_SYMBOL in red if previous command was fail and
# pain in green if all OK.
__return_status() {
  echo -n "%(?.%F{green}.%F{red})"
  echo -n "%B${__PROMPT_SYMBOL}%b"
  echo    "%f"
}

PROMPT='
$(__current_dir)$(__git_status)
$(__return_status) '

PS2="%B%F{yellow}"
PS2+="${__PROMPT_SYMBOL} "
PS2+="%f%b"
