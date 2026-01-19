.PHONY: help git tmux

help:
	@echo "Available tasks:"
	@echo "  make git"
	@echo "  make tmux"

git:
	@bash git/setup.sh

tmux:
	@bash tmux/setup.sh
