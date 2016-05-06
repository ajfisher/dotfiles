# My various dotfiles

## Powerline

Set up

```
pip install https://github.com/Lokaltog/powerline/tarball/develop
```

Should put files in `/usr/local/lib/python2.7/site-packages/powerline/`

If this is the case then the .bash_profile and .vimrc files should just work

```
ln -s ~/.config/powerline ~/config/powerline
```

## Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then install default packages

```
brew install bash socat wget bash-completion python coreutils
```

Now instlal things that depend on python

```
brew install nvm vim
```

### Cask things

```
brew cask install firefox google-chrome iterm2 slack spotify
```

## Solarized:

Linux

https://github.com/sigurdga/gnome-terminal-colors-solarized

OSX

https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized

## Vim

Link .vimrc

ln ~/config/4433283/.vimrc ~/.vimrc

