objects = emacs.d vim bash_profile bashrc gitconfig gitignore_global screenrc vimrc
dotfiles = $(addprefix $(HOME)/.,$(objects))

all: symlink

symlink: $(dotfiles)

$(HOME)/.%: %.sym
	ln -shf $(abspath $<) $@
