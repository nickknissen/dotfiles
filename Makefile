.PHONY: setup

setup:
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	mkdir -p ~/.vim/swap
	vim +PluginInstall +qall
	ln -s ~/.dotfiles/tig/tigrc ~/.tigrc
	ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
	ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
	ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig

clean:
	rm -f ~/.tigrc
	rm -f ~/.vimrc
	rm -f ~/.zshrc
	rm -f ~/.gitconfig
