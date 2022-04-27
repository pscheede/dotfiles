set -gx EDITOR (type -p vim)

set -gx PYENV_ROOT $HOME/.pyenv
set -gx fish_user_paths $PYENV_ROOT/bin $fish_user_paths

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

starship init fish | source

bass source ~/.cargo/env

# Created by `pipx` on 2022-01-29 22:53:37
set PATH $PATH /home/philipp/.local/bin
