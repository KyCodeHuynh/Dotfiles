set -xg GOPATH $HOME/go

# Install iTerm 2 shell integration
# See: https://www.iterm2.com/documentation-shell-integration.html
source ~/.iterm2_shell_integration.fish

# Use vim key-bindings within fish
# The actual bindings are in: 
#   ~/.config/fish/functions/fish_user_key_bindings.fish
# See: https://fedragon.github.io/vimode-fishshell-osx/
set fish_key_bindings fish_user_key_bindings
#
# Use RVM with Fish shell 
# See: https://rvm.io/integration/fish
rvm default

# ALIASES

alias brake "bundle exec rake"






# Deprecated; we use Vim keybindings for navigation instead

# From: https://superuser.com/questions/409594/fish-control-left-control-right-keybindings#442594
# bind \e\[1\;5C forward-word
# bind \e\[1\;5D backward-word

