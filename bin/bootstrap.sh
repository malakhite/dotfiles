if [ "$(uname)" == "Darwin" ]; then
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew install starship
fi

if [ ! -f /usr/local/bin/starship ]; then
	bash -c "$(curl -fsSL https://starship.rs/install.sh)"
fi

if [ ! -f ~/.fnm/fnm]; then
	bash -c "$(curl -fsSL https://fnm.vercel.app/install)"
fi
