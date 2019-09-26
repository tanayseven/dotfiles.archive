HOME_CONFIG_FILES := polybar/config dunst/dunstrc i3/config termite/config 
HOME_CONFIG_DIR := $(HOME)/.config
HOME_FILES := .zshrc .vimrc .Xresources .aliases
WORKSPACE_DIR := $(PWD)
WORKSPACE_CONFIG_DIR := $(WORKSPACE_DIR)/.config

SYSTEM_CONFIG_FILES := $(addprefix $(HOME_CONFIG_DIR)/, $(HOME_CONFIG_FILES)) $(addprefix $(HOME)/,$HOME_FILES)
WORKSPACE_CONFIG_FILES := $(addprefix $(WORKSPACE_CONFIG_DIR)/, $(HOME_CONFIG_FILES))

update: $(WORKSPACE_CONFIG_FILES)

install: i3ipc

i3ipc:
	python -c "import i3ipc" || pip install --user i3ipc

$(WORKSPACE_CONFIG_FILES): $(WORKSPACE_DIR)/%:$(HOME)/%
	@echo "Updating all the files in the current repo..."
	mkdir -p `echo $@ | sed -r "s/(.+)\/.+/\1/"` && cp $< $@

