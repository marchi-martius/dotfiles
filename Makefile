objects = emacs.d vim bash_profile bashrc gitconfig gitignore_global screenrc \
		  vimrc config/bspwm config/sxhkd config/panel config/fontconfig config/gtk-2.0 \
		  config/gtk-3.0 Xresources xinitrc local/bin/panel local/bin/panel_bar
dotfiles = $(addprefix $(HOME)/.,$(objects))

all: symlink

symlink: $(dotfiles)

$(HOME)/.%: %.sym
	ln -snf $(abspath $<) $@
