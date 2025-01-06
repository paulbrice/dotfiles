# aliases
alias vim="nvim"
alias make="gmake"

# path
export PATH="$HOME/.local/bin:${PATH}"
export PATH="/opt/homebrew/bin:${PATH}"
export PATH="/opt/homebrew/opt/m4/bin:$PATH"

# pipenv
export PIPENV_VENV_IN_PROJECT=1

# adsf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# brew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'