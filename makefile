install:
	stow --verbose --ignore=setup_scripts --target=$$HOME --restow */

macos:
	./setup_scripts/macos.sh

delete:
	stow --verbose --ignore=setup_scripts --target=$$HOME --delete */
