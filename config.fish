set -xg GOPATH $HOME/go

# Use vim key-bindings within fish
# The actual bindings are in: 
#   ~/.config/fish/functions/fish_user_key_bindings.fish
# See also : https://fedragon.github.io/vimode-fishshell-osx/
set fish_key_bindings fish_user_key_bindings
#
# Use RVM with Fish shell 
# See: https://rvm.io/integration/fish
rvm default

# ALIASES

alias brake "bundle exec rake"






# Original vim keybindings:
# set -g fish_key_bindings fish_vi_key_bindings

# From: https://superuser.com/questions/409594/fish-control-left-control-right-keybindings#442594
# bind \e\[1\;5C forward-word
# bind \e\[1\;5D backward-word
