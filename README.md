ready-steady-go
========

WARNING! This has not been tested!

About
-----

This is, as you can see, a repo of all my 'config-files' and my .vim-folder. setup.sh takes care of all the heavy lifting by cloning the repo and symlinking all the files and directories to their correct place in /home. The inspiration came from samueljon's repo called vim-config-and-plugin-sync [right here on GitHub][1].

### Installation
	wget --no-check-certificate https://github.com/gislifreyr/ready-steady-go/raw/master/setup
	chmod +x setup
	./setup

### Vim-plugins

* [pathogen][2] -- pathogen.vim: manage your runtimepath
* [delimitMate][3] -- Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
* [NERDTree][4] -- A tree explorer plugin for vim.

[1]: https://github.com/samueljon/vim-config-and-plugin-sync
[2]: https://github.com/tpope/vim-pathogen
[3]: https://github.com/Raimondi/delimitMate
[4]: https://github.com/scrooloose/nerdtree
