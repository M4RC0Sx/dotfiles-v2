# Setup fzf
# ---------
if [[ ! "$PATH" == */home/marcos/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/marcos/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/marcos/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/marcos/.fzf/shell/key-bindings.zsh"
