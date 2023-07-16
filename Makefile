DEFAULT_GOAL := help

.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  install-poetry  Install poetry"
	@echo "  install         Install dependencies"
	@echo "  docs            Build documentation"

.PHONY: install-poetry
install-poetry:
	pip install poetry

.PHONY: install
install:
	poetry install

.PHONY: docs
docs:
	poetry run mkdocs build
