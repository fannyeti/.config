set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH $HOME/bin $PATH
set -gx PATH $HOME/.local/bin $PATH

# NPM
set PATH $HOME/.nvm/versions/node/v19.4.0/bin $PATH

# Rust
set PATH $HOME/.cargo/bin/ $PATH

# Go
set PATH $HOME/usr/local/go/bin $PATH

# NVM
 function __check_rvm --on-variable PWD --description 'Do nvm stuff'
   status --is-command-substitution; and return

   if test -f .nvmrc; and test -r .nvmrc;
     nvm use
   else
   end
 end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

status is-interactive &&
    eval $HOME/miniconda3/bin/conda "shell.fish" "hook" $argv | source
