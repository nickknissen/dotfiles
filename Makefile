.PHONY: setup

setup:
	ln -sf ~/.dotfiles/tig/tigrc ~/.tigrc
	ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
	ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
	ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig
	cat /mnt/c/Users/Nick/.ssh/id_rsa.pub > ~/.ssh/id_rsa.pub
	cat /mnt/c/Users/Nick/.ssh/id_rsa > ~/.ssh/id_rsa
	chmod 600 ~/.ssh/id_rsa
	chmod 600 ~/.ssh/id_rsa.pub
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	mkdir -p ~/.vim/swap
	vim +PluginInstall +qall

clean:
	rm -f ~/.tigrc
	rm -f ~/.vimrc
	rm -f ~/.zshrc
	rm -f ~/.gitconfig
