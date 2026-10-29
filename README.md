```sh
mkdir -p "$HOME/.config/git"

ln -sfn "$PWD/.zshrc" "$HOME/.zshrc"
ln -sfn "$PWD/git/config" "$HOME/.config/git/config"
ln -sfn "$PWD/git/ignore" "$HOME/.config/git/ignore"
ln -sfn "$PWD/starship.toml" "$HOME/.config/starship.toml"

brew bundle --file=Brewfile
```
