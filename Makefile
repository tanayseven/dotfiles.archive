HOME_CONFIG_FILES := polybar/config dunst/dunstrc i3/config i3/py_spotify_listener.py termite/config polybar/launch_polybar.sh polybar/spotify_status.py
HOME_CONFIG_DIR := $(HOME)/.config
HOME_FILES := .zshrc .vimrc .Xresources .aliases .xinitrc
WORKSPACE_DIR := $(PWD)
WORKSPACE_CONFIG_DIR := $(WORKSPACE_DIR)/.config

SYSTEM_CONFIG_FILES := $(addprefix $(HOME_CONFIG_DIR)/, $(HOME_CONFIG_FILES)) $(addprefix $(HOME)/,$HOME_FILES)
WORKSPACE_CONFIG_FILES := $(addprefix $(WORKSPACE_CONFIG_DIR)/, $(HOME_CONFIG_FILES))

update: $(WORKSPACE_CONFIG_FILES) sync_dirs

$(WORKSPACE_CONFIG_FILES): $(WORKSPACE_DIR)/%:$(HOME)/%
	@echo "Updating all the files in the current repo..."
	mkdir -p `echo $@ | sed -r "s/(.+)\/.+/\1/"` && cp $< $@

sync_dirs:
	rsync -rvv $(HOME)/utility-scripts ./utility-scripts
	rsync -rvv $(HOME)/.fonts ./.fonts

