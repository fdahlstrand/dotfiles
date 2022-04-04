# Dotfiles

## Installation

```bash
echo ".cfg" >> .gitignore
git clone --bare git@github.com:fdahlstrand/dotfiles.git
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bash_aliases
config config --local status.showUntrackedFiles no
config checkout
```
