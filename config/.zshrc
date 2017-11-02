source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Install plugins from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle jump
antigen bundle sublime
antigen bundle yarn
antigen bundle command-not-found

# Install plugins form custom repo 
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply