# AI does dotfiles

## dotfiles

Your dotfiles are how you personalize your system. These are mine.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read this post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Install

Run this:

```sh
git clone https://github.com/{USER_NAME}/dotfiles-ai.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will use run Installers, Brew, and use Freshshell to symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc`,
which sets up a few paths that'll be different on your particular machine.

## Usage

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` in your terminal from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.
