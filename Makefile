.PHONY: setup clean

setup:
	ln -sf ~/.dotfiles/tig/tigrc ~/.tigrc
	ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
	ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
	ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig
	ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

	mkdir -p ~/.ssh
	cat /mnt/c/Users/Nick/.ssh/id_rsa.pub > ~/.ssh/id_rsa.pub
	cat /mnt/c/Users/Nick/.ssh/id_rsa > ~/.ssh/id_rsa
	chmod 600 ~/.ssh/id_rsa
	chmod 600 ~/.ssh/id_rsa.pub
	
	#[ ! -d "~/.vim/bundle/Vundle.vim" ] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	
	mkdir -p ~/.vim/swap
	vim +PluginInstall +qall

	echo '#Lauch zsh' >> ~/.bashrc
	echo 'if [ -t 1 ]; then' >> ~/.bashrc
	echo '  exec zsh' >> ~/.bashrc
	echo 'fi' >> ~/.bashrc

	#if [ ! -d "~/.oh-my-zsh/" ]; then git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh; fi
	chsh -s /bin/zsh

clean:
	rm -f ~/.tigrc
	rm -f ~/.vimrc
	rm -f ~/.zshrc
	rm -f ~/.gitconfig
