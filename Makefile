.PHONY: help git

help:
	@echo "Available tasks:"
	@echo "  make git    - Run git/setup.sh"

git:
	@bash git/setup.sh
