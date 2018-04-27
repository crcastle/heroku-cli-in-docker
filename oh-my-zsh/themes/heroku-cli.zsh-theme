heroku_user() {
  echo $(heroku auth:whoami 2> /dev/null)
}

local current_heroku_user='$(heroku_user)'

PROMPT="\
[ \
%{$fg[magenta]%}${current_heroku_user}\
%{$fg[white]%} \
]→ "
