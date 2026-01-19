.PHONY: help git tmux zsh

help:
	@echo "Available tasks:"
	@echo "  make git"
	@echo "  make tmux"
	@echo "  make zsh"	

git:
	@bash git/setup.sh

tmux:
	@bash tmux/setup.sh

zsh:
	@bash zsh/setup.sh
