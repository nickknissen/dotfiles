.PHONY: setup

setup:
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	dotrix
	vim +PluginInstall +qall
	ln -s ~/.dotfiles/tig/tigrc/home/nsn/.tigrc
	ln -s ~/.dotfiles/vim/vimrc /home/nsn/.vimrc
	ln -s ~/.dotfiles/zsh/zshrc /home/nsn/.zshrc
	ln -s ~/.dotfiles/git/gitconfig /home/nsn/.gitconfig
