# Load/source various dotfiles for logical separation
for file in ~/.{aliases,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Ensure TMUX is running on top of zsh
if [ "$TMUX" = "" ]; then tmux; fi

# npm install --global pure-prompt
autoload -U promptinit; promptinit
prompt pure
