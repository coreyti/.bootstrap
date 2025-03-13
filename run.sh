#!/usr/bin/env bash
set -euo pipefail

# ensure homebrew is installed
if which -s brew ; then
  echo "homebrew already installed"
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew install chezmoi
chezmoi init coreyti --apply
