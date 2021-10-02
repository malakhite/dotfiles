#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [ ! -f /usr/local/bin/starship ]; then
	if [ "$(uname)" == "Darwin" ]; then
		brew install starship
	elif [ "(uname)" == "Linux" ]; then
		bash -c "$(curl -fsSL https://starship.rs/install.sh)"
	fi
fi

if [ ! -f ~/.fnm/fnm ]; then
	bash -c "$(curl -fsSL https://fnm.vercel.app/install)"
fi

which fd &> /dev/null
if [ ! $? -eq 0 ]; then
	if [ "$(uname)" == "Darwin" ]; then
		brew install fd
	elif [ "$(uname)" == "Linux" ]; then
		sudo apt install -y fd
	fi
fi

if [ ! -e $HOME/.local/bin/nvim.appimage ]; then
	if [ "$(uname)" == "Darwin" ]; then
		brew install neovim
	elif [ "$(uname)" == "Linux" ]; then
		curl -L -o $HOME/.local/bin/nvim.appimage https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
		chmod u+x $HOME/.local/bin/nvim.appimage
		ln -s $HOME/.local/bin/nvim.appimage $HOME/.local/bin/nvim
	fi
fi

if [ ! -e $HOME/.cargo/bin/cargo ]; then
	curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path
fi