#!/bin/bash
set -e

echo "[zero-meta/env] Установка неоновой темы и подсветки для bash"

# Добавляем в ~/.bashrc цветной prompt, подсветку команд и алиасы
cat >> ~/.bashrc << 'EOF'

# Неоновый цветной bash prompt с git-статусом
parse_git_branch() {
  git branch 2>/dev/null | grep '*' | sed 's/* //'
}

PS1='\[\e[1;36m\]\u@\h \[\e[1;35m\]\w\[\e[0;33m\]$(parse_git_branch) \[\e[1;32m\]\$ \[\e[0m\]'

# Подсветка команд в истории
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT="%F %T "

# Алиасы
alias cls='clear'
alias ll='ls -la --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

EOF

echo "[zero-meta/env] Тема и подсветка добавлены. Выполни 'source ~/.bashrc' или перезапусти терминал."
