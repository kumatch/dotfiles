.PHONY: help ghostty git karabiner tmux zsh

help:
	@echo "Available tasks:"
	@echo "  make ghostty"
	@echo "  make git"
	@echo "  make karabiner"
	@echo "  make tmux"
	@echo "  make zsh"	

ghostty:
	@bash ghostty/setup.sh

git:
	@bash git/setup.sh

karabiner:
	@bash karabiner/setup.sh

tmux:
	@bash tmux/setup.sh

zsh:
	@bash zsh/setup.sh
