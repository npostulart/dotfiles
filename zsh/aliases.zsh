alias ls="ls --color=auto"
alias clr="clear"

# Disk utility aliases
alias df='df -h'
alias du='du -h'

# Git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gtt="gittower ."

# Docker php
alias composer="docker run --rm -it -v \${COMPOSER_HOME:-\$HOME/.composer}:/tmp -v \$PWD:/app -w /app --user $(id -u):$(id -g) composer:latest"
alias php="docker run --rm -it -v \$PWD:/app -w /app php:7.2-cli-alpine"

# Docker and Docker-Compose
alias dps="docker ps"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dclf="docker-compose logs -f"
alias dcps="docker-compose ps"
