# My dotfiles

## Overview

My dotfiles are managed using [dotbot](https://github.com/anishathalye/dotbot), which is
incorporated via a [git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules). I also
include [fzf](https://github.com/junegunn/fzf), and the zsh plugins
[zsh-completions](https://github.com/zsh-users/zsh-completions) and
[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) as git submodules.
Cloning this repository automatically makes all three available. The rest is handled via dotbot
itself, and an install script in the `bin` directory.

## Installation

```sh
git clone https://github.com/malakhite/dotfiles.git ~/.dotfiles
```

```sh
cd ~/.dotfiles
```

```sh
zsh bootstrap.sh
```

Those three steps should get everything running except for the Neovim packages.

## Neovim

I've gone with Neovim, mostly because I like that it has integrated LSP, and that is can use Lua for
configuration instead of Vimscript.

###

First startup

```
:PackerCompile
```

```
:PackerInstall
```

After that, Neovim should be kept up to date automatically. I may be wrong though. I'm still getting
comfortable with it.
