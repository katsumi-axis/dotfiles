# dotfiles
💻 These are my dotfiles. There are many like them, but these ones are mine.


## chezmoi
```
brew install chezmoi
chezmoi init git@github.com:katsumi-axis/dotfiles.git
chezmoi apply
```


## Brew
```
brew bundle --file '~/.Brewfile'  
```

## defaults write
```
defaults write -g com.apple.mouse.scaling 8
defaults write -g InitialKeyRepeat -int 10
defaults write com.apple.finder CreateDesktop -bool false
killall Finder
```
