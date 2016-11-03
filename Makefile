objects = emacs.d vim bash_profile bashrc gitconfig gitignore_global screenrc \
		  vimrc config/bspwm config/sxhkd config/panel config/fontconfig \
		  config/gtk-3.0 gtkrc-2.0 themes Xresources Xresources.d xinitrc \
		  local/bin/panel local/bin/panel_bar mutt config/base16-shell config/cower \
		  config/ncmpcpp config/termite local/bin/app-launcher local/bin/check-kb-layout \
		  local/bin/check-new-email
dotfiles = $(addprefix $(HOME)/.,$(objects))

all: symlink

symlink: $(dotfiles)

$(HOME)/.%: %.sym
	ln -snf $(abspath $<) $@
