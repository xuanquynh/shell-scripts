#/usr/bin/env bash
if [ -f "/etc/profile.d/rvm.sh" ]; then
    source "/etc/profile.d/rvm.sh"
fi

# user's private bins
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's phpenv private bin if it exists
if [ -d "$HOME/.phpenv" ] ; then
    PHPENV_ROOT="$HOME/.phpenv"
    PATH="$HOME/.phpenv/bin:$PATH"
    eval "$(phpenv init -)"
fi

# set PATH so it includes user's composer private bin if it exists
if [ -d "$HOME/.config/composer/vendor/bin" ] ; then
    PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

if [ -d "$HOME/.composer/vendor/bin" ] ; then
    PATH="$HOME/.composer/vendor/bin:$PATH"
fi

# set PATH so it includes user's pyenv private bin if it exists
if [ -d "$HOME/.pyenv" ]; then
    PYENV_ROOT="$HOME/.pyenv"
    PATH="$PYENV_ROOT/bin:$PATH"
    if command -v pyenv 1>/dev/null 2>&1; then
        eval "$(pyenv init -)"
    fi
fi

# set PATH so it includes user's symfony private bin if it exists
if [ -d "$HOME/.symfony" ] ; then
    PATH="$HOME/.symfony/bin:$PATH"
fi

# set PATH so it includes user's nvm private bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# set PATH so it includes user's yarn private bin if it exists
if [ -d "$HOME/.yarn/bin" ]; then
    PATH="$HOME/.yarn/bin:$PATH"
fi

if [ -d "/usr/local/go/bin" ]; then
    PATH="/usr/local/go/bin:$PATH"
fi
