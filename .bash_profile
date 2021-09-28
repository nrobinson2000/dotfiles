#
# ~/.bash_profile
#

# Load .bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Add private bin to PATH
[[ -d "$HOME/bin" ]] && PATH="$HOME/bin:$PATH"

# Add private bin to PATH
[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
